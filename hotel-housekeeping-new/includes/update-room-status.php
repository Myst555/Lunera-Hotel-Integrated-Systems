<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
require('database.php');

header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $roomNumber = $_POST['roomNumber'] ?? '';
    $newStatus = $_POST['newStatus'] ?? '';
    if ($roomNumber && $newStatus) {
        $success = false;

        // Get RoomID from RoomNumber
        $stmt = $connTasks->prepare("SELECT id as RoomID FROM roomslunera_hotel.rooms WHERE room_number = ?");
        $stmt->bind_param('s', $roomNumber);
        $stmt->execute();
        $result = $stmt->get_result();
        $room = $result->fetch_assoc();
        $stmt->close();
        
        if (!$room) {
            echo json_encode(['success' => false, 'error' => 'Room not found']);
            exit;
        }
        
        $roomId = $room['RoomID'];

        if (isset($_POST['cleaningTime'])) {
            $cleaningTime = (int)$_POST['cleaningTime'];
            
            // Update room status (removed CleaningTime column)
            $stmt = $connTasks->prepare("UPDATE roomslunera_hotel.rooms SET status = ? WHERE room_number = ?");
            $stmt->bind_param('ss', $newStatus, $roomNumber);
            $success = $stmt->execute();
            $stmt->close();
            
            // If marking as Clean, update assignments to Completed AND update room status to Available
            if ($success && strtolower($newStatus) === 'clean') {
                // Format time as MM:SS
                $minutes = floor($cleaningTime / 60);
                $seconds = $cleaningTime % 60;
                $timeCompleted = sprintf("%02d:%02d", $minutes, $seconds);
                
                // First, store room number and task description in assignments before deleting tasks
                $stmt = $conn->prepare("UPDATE webdb.assignments a
                                       JOIN roomslunera_hotel.tasks t ON a.TaskID = t.TaskID
                                       JOIN roomslunera_hotel.rooms r ON t.RoomID = r.id
                                       SET a.RoomNumber = r.room_number,
                                           a.TaskDescription = t.Description,
                                           a.Status = 'Completed',
                                           a.TimeCompleted = ?
                                       WHERE t.RoomID = ? AND a.Status IN ('Pending', 'In Progress')");
                $stmt->bind_param('si', $timeCompleted, $roomId);
                $assignSuccess = $stmt->execute();
                $stmt->close();
                
                // Update room status to Available in roomslunera_hotel database
                $stmt = $connTasks->prepare("UPDATE roomslunera_hotel.rooms SET status = 'Available' WHERE id = ?");
                $stmt->bind_param('i', $roomId);
                $roomStatusUpdated = $stmt->execute();
                $stmt->close();
                
                // Delete completed tasks from roomslunera_hotel.tasks
                $stmt = $connTasks->prepare("DELETE FROM tasks WHERE RoomID = ?");
                $stmt->bind_param('i', $roomId);
                $tasksDeleted = $stmt->execute();
                $stmt->close();
                
                echo json_encode(['success' => $success, 'assignmentUpdated' => $assignSuccess, 'roomStatusUpdated' => $roomStatusUpdated, 'tasksDeleted' => $tasksDeleted]);
                exit;
            }
        } else {
            $stmt = $connTasks->prepare("UPDATE roomslunera_hotel.rooms SET status = ? WHERE room_number = ?");
            $stmt->bind_param('ss', $newStatus, $roomNumber);
            $success = $stmt->execute();
            $stmt->close();
            
            // If marking as Clean (without time), still update assignments AND update room status to Available
            if ($success && strtolower($newStatus) === 'clean') {
                // First, store room number and task description in assignments before deleting tasks
                $stmt = $conn->prepare("UPDATE webdb.assignments a
                                       JOIN roomslunera_hotel.tasks t ON a.TaskID = t.TaskID
                                       JOIN roomslunera_hotel.rooms r ON t.RoomID = r.id
                                       SET a.RoomNumber = r.room_number,
                                           a.TaskDescription = t.Description,
                                           a.Status = 'Completed',
                                           a.TimeCompleted = '00:00'
                                       WHERE t.RoomID = ? AND a.Status IN ('Pending', 'In Progress')");
                $stmt->bind_param('i', $roomId);
                $assignSuccess = $stmt->execute();
                $stmt->close();
                
                // Update room status to Available in roomslunera_hotel database
                $stmt = $connTasks->prepare("UPDATE roomslunera_hotel.rooms SET status = 'Available' WHERE id = ?");
                $stmt->bind_param('i', $roomId);
                $roomStatusUpdated = $stmt->execute();
                $stmt->close();
                
                // Delete completed tasks from roomslunera_hotel.tasks
                $stmt = $connTasks->prepare("DELETE FROM tasks WHERE RoomID = ?");
                $stmt->bind_param('i', $roomId);
                $tasksDeleted = $stmt->execute();
                $stmt->close();
                
                echo json_encode(['success' => $success, 'assignmentUpdated' => $assignSuccess, 'roomStatusUpdated' => $roomStatusUpdated, 'tasksDeleted' => $tasksDeleted]);
                exit;
            }
        }
        echo json_encode(['success' => $success]);
        exit;
    }
}
echo json_encode(['success' => false, 'error' => 'Missing parameters']);
echo json_encode(['success' => false]);