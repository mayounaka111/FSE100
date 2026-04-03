global key;
InitKeyboard();
baseSpeed = 50;
driftOffset = 40;   % 漂移强度

while true
    pause(0.1);
    
    if key == 'q' % Check for quit key
        brick.StopAllMotors();
        break; % Exit the loop if 'q' is pressed
    end
    % Additional processing can be added here
    switch key
        case 'w'
            
            brick.MoveMotor('A', baseSpeed);
            brick.MoveMotor('B', baseSpeed);

        case 's'
            
            brick.MoveMotor('A', -baseSpeed);
            brick.MoveMotor('B', -baseSpeed);

        case 'a'
            
            brick.MoveMotor('A', -10);
            brick.MoveMotor('B', 10);

        case 'd'
            
            brick.MoveMotor('A', 10);
            brick.MoveMotor('B', -10);
 
        case 'j'
            % 左漂
            brick.MoveMotor('A', baseSpeed - driftOffset);
            brick.MoveMotor('B', baseSpeed + driftOffset);

        case 'k'
            % 右漂
            brick.MoveMotor('A', baseSpeed + driftOffset);
            brick.MoveMotor('B', baseSpeed - driftOffset);

            
        case 'space'
            % handbrake
            brick.StopAllMotors();
        case 0
            brick.MoveMotor('A', 0);
            brick.MoveMotor('B', 0);
        
            
    end

end
CloseKeyboard();