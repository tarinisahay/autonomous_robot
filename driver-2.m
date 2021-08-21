
%colorSensor = colorSensor(brick);
%moddtorA = motor(brick,'A');
%motorB = motor(brick,'B');
%motorC = motor(brick,'C');

beep(brick);
AutonomousMode(motorA, motorB, colorSensor);
ControllerMode(motorA, motorB, motorC);
AutonomousMode(motorA, motorB, colorSensor);
ControllerMode(motorA, motorB, motorC);
AutonomousMode(motorA, motorB, colorSensor);
ControllerMode(motorA, motorB, motorC);