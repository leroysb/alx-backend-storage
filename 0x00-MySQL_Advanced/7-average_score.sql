-- SQL script that creates a stored procedure ComputeAverageScoreForUser that computes and store the average score for a student. Note: An average score can be a decimal
delimiter //

CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
    DECLARE avg_score DECIMAL(10, 2);

    -- Compute the average score for the user
    SELECT AVG(score) INTO avg_score FROM corrections WHERE user_id = user_id;
    
    -- Update the average_score column in the users table
    UPDATE users SET average_score = avg_score WHERE id = user_id;
END //

delimiter ;
