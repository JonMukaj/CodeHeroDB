CREATE DATABASE  IF NOT EXISTS `main` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `main`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: main
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping routines for database 'main'
--
/*!50003 DROP FUNCTION IF EXISTS `findNrOfQuestions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `findNrOfQuestions`(categoryID INT) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE nrOfQuestions INT DEFAULT 0;
    SELECT COUNT(*) into nrOfQuestions
    FROM includes i
    WHERE i.categoryID = categoryID;
RETURN nrOfQuestions;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `findNrOfSolved` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `findNrOfSolved`(userId INT) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE numOfQuestionSolved INT DEFAULT 0;
	SELECT COUNT(*) into numOfQuestionSolved
    FROM submission s
    WHERE s.userid = userID AND s.submissionStatus = 'Accepted';
RETURN numOfQuestionSolved;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `findUserStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `findUserStatus`(numOfQuestionSolved INT) RETURNS varchar(20) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
BEGIN
	
    DECLARE userStatus ENUM('Beginner', 'Intermediate', 'Expert') DEFAULT 'Beginner';
    IF numOfQuestionSolved >= 3 THEN
		SET userStatus = 'Expert';
	ELSEIF numOfQuestionSolved >= 2 THEN
		SET userStatus = 'Intermediate';
	END IF;
RETURN userStatus;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Temporary view structure for view `kevin2_comments_per_category`
--

DROP TABLE IF EXISTS `kevin2_comments_per_category`;
/*!50001 DROP VIEW IF EXISTS `kevin2_comments_per_category`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `kevin2_comments_per_category` AS SELECT 
 1 AS `CategoryName`,
 1 AS `NrOfComments`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `enest3_status_not&beginner`
--

DROP TABLE IF EXISTS `enest3_status_not&beginner`;
/*!50001 DROP VIEW IF EXISTS `enest3_status_not&beginner`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `enest3_status_not&beginner` AS SELECT 
 1 AS `UserID`,
 1 AS `Username`,
 1 AS `Email`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `kristi1_person&email`
--

DROP TABLE IF EXISTS `kristi1_person&email`;
/*!50001 DROP VIEW IF EXISTS `kristi1_person&email`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `kristi1_person&email` AS SELECT 
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `Username`,
 1 AS `Email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `enest4_not_acceptedt_user`
--

DROP TABLE IF EXISTS `enest4_not_acceptedt_user`;
/*!50001 DROP VIEW IF EXISTS `enest4_not_acceptedt_user`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `enest4_not_acceptedt_user` AS SELECT 
 1 AS `UserID`,
 1 AS `Username`,
 1 AS `SubmissionID`,
 1 AS `SubmissionStatus`,
 1 AS `Language`,
 1 AS `Email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `kristi3_education`
--

DROP TABLE IF EXISTS `kristi3_education`;
/*!50001 DROP VIEW IF EXISTS `kristi3_education`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `kristi3_education` AS SELECT 
 1 AS `PersonID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `Education`,
 1 AS `BirthDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `egi4_java_playground`
--

DROP TABLE IF EXISTS `egi4_java_playground`;
/*!50001 DROP VIEW IF EXISTS `egi4_java_playground`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `egi4_java_playground` AS SELECT 
 1 AS `username`,
 1 AS `userId`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `category_view`
--

DROP TABLE IF EXISTS `category_view`;
/*!50001 DROP VIEW IF EXISTS `category_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `category_view` AS SELECT 
 1 AS `categoryID`,
 1 AS `categoryName`,
 1 AS `NrOfQuestions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `kevin4_nr_questions_category_contest`
--

DROP TABLE IF EXISTS `kevin4_nr_questions_category_contest`;
/*!50001 DROP VIEW IF EXISTS `kevin4_nr_questions_category_contest`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `kevin4_nr_questions_category_contest` AS SELECT 
 1 AS `Contestname`,
 1 AS `Categoryname`,
 1 AS `NrOfQuestions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ranking`
--

DROP TABLE IF EXISTS `ranking`;
/*!50001 DROP VIEW IF EXISTS `ranking`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ranking` AS SELECT 
 1 AS `UserID`,
 1 AS `Username`,
 1 AS `Solved`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `egi2_top3users_with_accepted`
--

DROP TABLE IF EXISTS `egi2_top3users_with_accepted`;
/*!50001 DROP VIEW IF EXISTS `egi2_top3users_with_accepted`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `egi2_top3users_with_accepted` AS SELECT 
 1 AS `Personid`,
 1 AS `Firstname`,
 1 AS `LastName`,
 1 AS `UserId`,
 1 AS `Username`,
 1 AS `NumberOfSubmissions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `kevin1_contest&questions`
--

DROP TABLE IF EXISTS `kevin1_contest&questions`;
/*!50001 DROP VIEW IF EXISTS `kevin1_contest&questions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `kevin1_contest&questions` AS SELECT 
 1 AS `ContestID`,
 1 AS `ContestName`,
 1 AS `QuestionName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `person_view`
--

DROP TABLE IF EXISTS `person_view`;
/*!50001 DROP VIEW IF EXISTS `person_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_view` AS SELECT 
 1 AS `personID`,
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `BirthDate`,
 1 AS `Gender`,
 1 AS `AGE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `egi3_font_greater_than_avg`
--

DROP TABLE IF EXISTS `egi3_font_greater_than_avg`;
/*!50001 DROP VIEW IF EXISTS `egi3_font_greater_than_avg`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `egi3_font_greater_than_avg` AS SELECT 
 1 AS `Firstname`,
 1 AS `Lastname`,
 1 AS `UserId`,
 1 AS `Username`,
 1 AS `Name`,
 1 AS `FontSize`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fabio3_more_than1_discussion`
--

DROP TABLE IF EXISTS `fabio3_more_than1_discussion`;
/*!50001 DROP VIEW IF EXISTS `fabio3_more_than1_discussion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fabio3_more_than1_discussion` AS SELECT 
 1 AS `QuestionName`,
 1 AS `Difficulty`,
 1 AS `NrOfDiscussions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `kevin3_solved_question_per_category`
--

DROP TABLE IF EXISTS `kevin3_solved_question_per_category`;
/*!50001 DROP VIEW IF EXISTS `kevin3_solved_question_per_category`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `kevin3_solved_question_per_category` AS SELECT 
 1 AS `Username`,
 1 AS `Categoryname`,
 1 AS `Solved`,
 1 AS `Percentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fabio1_user_cen_discussion`
--

DROP TABLE IF EXISTS `fabio1_user_cen_discussion`;
/*!50001 DROP VIEW IF EXISTS `fabio1_user_cen_discussion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fabio1_user_cen_discussion` AS SELECT 
 1 AS `UserID`,
 1 AS `Username`,
 1 AS `Title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_view`
--

DROP TABLE IF EXISTS `user_view`;
/*!50001 DROP VIEW IF EXISTS `user_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_view` AS SELECT 
 1 AS `userID`,
 1 AS `username`,
 1 AS `email`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `comment_view`
--

DROP TABLE IF EXISTS `comment_view`;
/*!50001 DROP VIEW IF EXISTS `comment_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comment_view` AS SELECT 
 1 AS `title`,
 1 AS `username`,
 1 AS `commentDescription`,
 1 AS `commentDate`,
 1 AS `commentTime`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `enest5_created_number`
--

DROP TABLE IF EXISTS `enest5_created_number`;
/*!50001 DROP VIEW IF EXISTS `enest5_created_number`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `enest5_created_number` AS SELECT 
 1 AS `userID`,
 1 AS `Username`,
 1 AS `Email`,
 1 AS `NrOfQuestions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fabio4_person&discussion`
--

DROP TABLE IF EXISTS `fabio4_person&discussion`;
/*!50001 DROP VIEW IF EXISTS `fabio4_person&discussion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fabio4_person&discussion` AS SELECT 
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `QuestionId`,
 1 AS `Title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `enest2_question_easy_2019`
--

DROP TABLE IF EXISTS `enest2_question_easy_2019`;
/*!50001 DROP VIEW IF EXISTS `enest2_question_easy_2019`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `enest2_question_easy_2019` AS SELECT 
 1 AS `QuestionID`,
 1 AS `QuestionName`,
 1 AS `Difficulty`,
 1 AS `DateOfCreation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `egi1_question_medium_diff`
--

DROP TABLE IF EXISTS `egi1_question_medium_diff`;
/*!50001 DROP VIEW IF EXISTS `egi1_question_medium_diff`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `egi1_question_medium_diff` AS SELECT 
 1 AS `UserID`,
 1 AS `Username`,
 1 AS `QuestioNname`,
 1 AS `Difficulty`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `egi5_different_theme&keybinding`
--

DROP TABLE IF EXISTS `egi5_different_theme&keybinding`;
/*!50001 DROP VIEW IF EXISTS `egi5_different_theme&keybinding`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `egi5_different_theme&keybinding` AS SELECT 
 1 AS `UserID`,
 1 AS `Username`,
 1 AS `Theme`,
 1 AS `KeyBinding`,
 1 AS `Playground`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fabio2_plan&discussion`
--

DROP TABLE IF EXISTS `fabio2_plan&discussion`;
/*!50001 DROP VIEW IF EXISTS `fabio2_plan&discussion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fabio2_plan&discussion` AS SELECT 
 1 AS `UserID`,
 1 AS `PlanName`,
 1 AS `Title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `discussion_view`
--

DROP TABLE IF EXISTS `discussion_view`;
/*!50001 DROP VIEW IF EXISTS `discussion_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `discussion_view` AS SELECT 
 1 AS `Thread`,
 1 AS `QuestionName`,
 1 AS `UserName`,
 1 AS `Description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `enest1_c&accepted`
--

DROP TABLE IF EXISTS `enest1_c&accepted`;
/*!50001 DROP VIEW IF EXISTS `enest1_c&accepted`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `enest1_c&accepted` AS SELECT 
 1 AS `SubmissionID`,
 1 AS `SubmissionStatus`,
 1 AS `SubmissionTime`,
 1 AS `Date`,
 1 AS `Code`,
 1 AS `Runtime`,
 1 AS `Memory`,
 1 AS `Language`,
 1 AS `QuestionID`,
 1 AS `UserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `kristi2_person&skills`
--

DROP TABLE IF EXISTS `kristi2_person&skills`;
/*!50001 DROP VIEW IF EXISTS `kristi2_person&skills`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `kristi2_person&skills` AS SELECT 
 1 AS `PersonID`,
 1 AS `PhoneNumber`,
 1 AS `Skills`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `fabio5_location&discussion`
--

DROP TABLE IF EXISTS `fabio5_location&discussion`;
/*!50001 DROP VIEW IF EXISTS `fabio5_location&discussion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fabio5_location&discussion` AS SELECT 
 1 AS `PersonID`,
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `Country`,
 1 AS `City`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `kevin2_comments_per_category`
--

/*!50001 DROP VIEW IF EXISTS `kevin2_comments_per_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kevin2_comments_per_category` AS select `ca`.`CategoryName` AS `CategoryName`,count(`c`.`UserID`) AS `NrOfComments` from ((((`question` `q` join `discussion` `d`) join `comments` `c`) join `category` `ca`) join `includes` `i`) where ((`q`.`QuestionID` = `d`.`QuestionID`) and (`q`.`QuestionID` = `c`.`QuestionID`) and (`d`.`Title` = `c`.`Title`) and (`ca`.`CategoryID` = `i`.`CategoryID`) and (`q`.`QuestionID` = `i`.`QuestionID`)) group by `ca`.`CategoryName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `enest3_status_not&beginner`
--

/*!50001 DROP VIEW IF EXISTS `enest3_status_not&beginner`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `enest3_status_not&beginner` AS select `user`.`UserID` AS `UserID`,`user`.`Username` AS `Username`,`user`.`Email` AS `Email`,`findUserStatus`(`user`.`UserID`) AS `Status` from `user` where (`findUserStatus`(`user`.`UserID`) <> 'Beginner') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `kristi1_person&email`
--

/*!50001 DROP VIEW IF EXISTS `kristi1_person&email`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kristi1_person&email` AS select `p`.`FirstName` AS `FirstName`,`p`.`LastName` AS `LastName`,`u`.`Username` AS `Username`,`u`.`Email` AS `Email` from ((`person` `p` join `contact` `c`) join `user` `u`) where ((`p`.`UserID` = `u`.`UserID`) and (`c`.`PersonID` = `p`.`PersonID`)) order by `u`.`Username` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `enest4_not_acceptedt_user`
--

/*!50001 DROP VIEW IF EXISTS `enest4_not_acceptedt_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `enest4_not_acceptedt_user` AS select `u`.`UserID` AS `UserID`,`u`.`Username` AS `Username`,`s`.`SubmissionID` AS `SubmissionID`,`s`.`SubmissionStatus` AS `SubmissionStatus`,`s`.`Language` AS `Language`,`u`.`Email` AS `Email` from (`submission` `s` join `user` `u`) where ((`s`.`UserID` = `u`.`UserID`) and (`s`.`SubmissionStatus` <> 'Accepted')) order by `s`.`SubmissionStatus`,`s`.`Language` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `kristi3_education`
--

/*!50001 DROP VIEW IF EXISTS `kristi3_education`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kristi3_education` AS select `b`.`PersonID` AS `PersonID`,`p`.`FirstName` AS `FirstName`,`p`.`LastName` AS `LastName`,`b`.`Education` AS `Education`,`p`.`BirthDate` AS `BirthDate` from (`background` `b` join `person` `p`) where (`b`.`PersonID` = `p`.`PersonID`) order by `b`.`Education` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `egi4_java_playground`
--

/*!50001 DROP VIEW IF EXISTS `egi4_java_playground`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `egi4_java_playground` AS select `u`.`Username` AS `username`,`u`.`UserID` AS `userId`,`pg`.`Name` AS `Name` from ((`user` `u` join `playground` `pg`) join `environment` `e`) where ((`u`.`UserID` = `pg`.`UserID`) and (`pg`.`PlaygroundID` = `e`.`PlaygroundID`) and (`pg`.`Privacy` = 'Public') and (`e`.`Language` = 'Java')) group by `u`.`Username`,`u`.`UserID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `category_view`
--

/*!50001 DROP VIEW IF EXISTS `category_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `category_view` AS select `c`.`CategoryID` AS `categoryID`,`c`.`CategoryName` AS `categoryName`,`findNrOfQuestions`(`c`.`CategoryID`) AS `NrOfQuestions` from `category` `c` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `kevin4_nr_questions_category_contest`
--

/*!50001 DROP VIEW IF EXISTS `kevin4_nr_questions_category_contest`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kevin4_nr_questions_category_contest` AS select `co`.`ContestName` AS `Contestname`,`c`.`CategoryName` AS `Categoryname`,count(`q`.`QuestionID`) AS `NrOfQuestions` from ((((`question` `q` join `category` `c`) join `contest` `co`) join `consists` `con`) join `includes` `i`) where ((`con`.`ContestID` = `co`.`ContestID`) and (`con`.`QuestionID` = `q`.`QuestionID`) and (`i`.`QuestionID` = `q`.`QuestionID`) and (`i`.`CategoryID` = `c`.`CategoryID`)) group by `co`.`ContestName`,`c`.`CategoryName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ranking`
--

/*!50001 DROP VIEW IF EXISTS `ranking`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ranking` AS select `u`.`UserID` AS `UserID`,`u`.`Username` AS `Username`,`findNrOfSolved`(`u`.`UserID`) AS `Solved` from `user` `u` order by `findNrOfSolved`(`u`.`UserID`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `egi2_top3users_with_accepted`
--

/*!50001 DROP VIEW IF EXISTS `egi2_top3users_with_accepted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `egi2_top3users_with_accepted` AS select `p`.`PersonID` AS `Personid`,`p`.`FirstName` AS `Firstname`,`p`.`LastName` AS `LastName`,`u`.`UserID` AS `UserId`,`u`.`Username` AS `Username`,count(`s`.`UserID`) AS `NumberOfSubmissions` from ((`person` `p` join `user` `u`) join `submission` `s`) where ((`p`.`UserID` = `u`.`UserID`) and (`u`.`UserID` = `s`.`UserID`) and (`s`.`SubmissionStatus` = 'Accepted') and (`s`.`Runtime` <= (select avg(`submission`.`Runtime`) from `submission`))) group by `p`.`PersonID` order by `NumberOfSubmissions` desc limit 3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `kevin1_contest&questions`
--

/*!50001 DROP VIEW IF EXISTS `kevin1_contest&questions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kevin1_contest&questions` AS select `co`.`ContestID` AS `ContestID`,`co`.`ContestName` AS `ContestName`,`q`.`QuestionName` AS `QuestionName` from ((`question` `q` join `consists` `c`) join `contest` `co`) where ((`q`.`QuestionID` = `c`.`QuestionID`) and (`c`.`ContestID` = `co`.`ContestID`)) order by `co`.`ContestName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_view`
--

/*!50001 DROP VIEW IF EXISTS `person_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_view` AS select `person`.`PersonID` AS `personID`,`person`.`FirstName` AS `firstName`,`person`.`LastName` AS `lastName`,`person`.`BirthDate` AS `BirthDate`,`person`.`Gender` AS `Gender`,timestampdiff(YEAR,`person`.`BirthDate`,curdate()) AS `AGE` from `person` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `egi3_font_greater_than_avg`
--

/*!50001 DROP VIEW IF EXISTS `egi3_font_greater_than_avg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `egi3_font_greater_than_avg` AS select `p`.`FirstName` AS `Firstname`,`p`.`LastName` AS `Lastname`,`u`.`UserID` AS `UserId`,`u`.`Username` AS `Username`,`pg`.`Name` AS `Name`,`edt`.`FontSize` AS `FontSize` from (((`person` `p` join `user` `u`) join `playground` `pg`) join `editor` `edt`) where ((`p`.`UserID` = `u`.`UserID`) and (`pg`.`UserID` = `u`.`UserID`) and (`pg`.`Privacy` = 'Private') and (`pg`.`PlaygroundID` = `edt`.`PlaygroundID`) and (`edt`.`FontSize` > (select avg(`editor`.`FontSize`) from `editor`))) group by `u`.`UserID` order by `p`.`FirstName` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fabio3_more_than1_discussion`
--

/*!50001 DROP VIEW IF EXISTS `fabio3_more_than1_discussion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fabio3_more_than1_discussion` AS select `q`.`QuestionName` AS `QuestionName`,`q`.`Difficulty` AS `Difficulty`,count(0) AS `NrOfDiscussions` from (`question` `q` join `discussion` `d`) where (`q`.`QuestionID` = `d`.`QuestionID`) group by `d`.`QuestionID` having (count(0) > 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `kevin3_solved_question_per_category`
--

/*!50001 DROP VIEW IF EXISTS `kevin3_solved_question_per_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kevin3_solved_question_per_category` AS select `u`.`Username` AS `Username`,`ca`.`CategoryName` AS `Categoryname`,count(`s`.`SubmissionStatus`) AS `Solved`,concat(round(((count(`s`.`SubmissionStatus`) / `findNrOfQuestions`(`ca`.`CategoryID`)) * 100),2),'%') AS `Percentage` from ((((`question` `q` join `submission` `s`) join `user` `u`) join `category` `ca`) join `includes` `i`) where ((`u`.`UserID` = `s`.`UserID`) and (`q`.`QuestionID` = `s`.`QuestionID`) and (`ca`.`CategoryID` = `i`.`CategoryID`) and (`q`.`QuestionID` = `i`.`QuestionID`) and (`s`.`SubmissionStatus` = 'Accepted')) group by `u`.`Username`,`ca`.`CategoryName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fabio1_user_cen_discussion`
--

/*!50001 DROP VIEW IF EXISTS `fabio1_user_cen_discussion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fabio1_user_cen_discussion` AS select `u`.`UserID` AS `UserID`,`u`.`Username` AS `Username`,`d`.`Title` AS `Title` from (`discussion` `d` join `user` `u`) where ((`u`.`UserID` = `d`.`UserID`) and (`d`.`Title` like '%CEN%')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_view`
--

/*!50001 DROP VIEW IF EXISTS `user_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_view` AS select `u`.`UserID` AS `userID`,`u`.`Username` AS `username`,`u`.`Email` AS `email`,`FINDUSERSTATUS`(`FINDNROFSOLVED`(`u`.`UserID`)) AS `Status` from `user` `u` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `comment_view`
--

/*!50001 DROP VIEW IF EXISTS `comment_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comment_view` AS select `c`.`Title` AS `title`,`u`.`Username` AS `username`,`c`.`CommentDescription` AS `commentDescription`,`c`.`CommentDate` AS `commentDate`,`c`.`CommentTime` AS `commentTime` from (`comments` `c` join `user` `u`) where (`u`.`UserID` = `c`.`UserID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `enest5_created_number`
--

/*!50001 DROP VIEW IF EXISTS `enest5_created_number`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `enest5_created_number` AS select `u`.`UserID` AS `userID`,`u`.`Username` AS `Username`,`u`.`Email` AS `Email`,count(`q`.`QuestionID`) AS `NrOfQuestions` from (`question` `q` join `user` `u`) where (`q`.`UserID` = `u`.`UserID`) group by `q`.`UserID`,`u`.`Username` having (count(`q`.`QuestionID`) > 1) order by count(`q`.`QuestionID`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fabio4_person&discussion`
--

/*!50001 DROP VIEW IF EXISTS `fabio4_person&discussion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fabio4_person&discussion` AS select `p`.`FirstName` AS `FirstName`,`p`.`LastName` AS `LastName`,`d`.`QuestionID` AS `QuestionId`,`d`.`Title` AS `Title` from ((`person` `p` join `user` `u`) join `discussion` `d`) where ((`p`.`UserID` = `u`.`UserID`) and (`u`.`UserID` = `d`.`UserID`)) order by `p`.`FirstName`,`p`.`LastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `enest2_question_easy_2019`
--

/*!50001 DROP VIEW IF EXISTS `enest2_question_easy_2019`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `enest2_question_easy_2019` AS select `question`.`QuestionID` AS `QuestionID`,`question`.`QuestionName` AS `QuestionName`,`question`.`Difficulty` AS `Difficulty`,`question`.`DateOfCreation` AS `DateOfCreation` from `question` where ((`question`.`Difficulty` = 'Easy') and (`question`.`DateOfCreation` like '%2019%')) order by `question`.`DateOfCreation` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `egi1_question_medium_diff`
--

/*!50001 DROP VIEW IF EXISTS `egi1_question_medium_diff`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `egi1_question_medium_diff` AS select `u`.`UserID` AS `UserID`,`u`.`Username` AS `Username`,`q`.`QuestionName` AS `QuestioNname`,`q`.`Difficulty` AS `Difficulty`,`p`.`Name` AS `Name` from (((`user` `u` join `submission` `s`) join `playground` `p`) join `question` `q`) where ((`u`.`UserID` = `s`.`UserID`) and (`u`.`UserID` = `p`.`UserID`) and (`s`.`QuestionID` = `q`.`QuestionID`) and (`q`.`Difficulty` = 'Medium')) group by `u`.`UserID`,`u`.`Username`,`q`.`QuestionName`,`q`.`Difficulty`,`p`.`Name` having (count(`q`.`UserID`) >= 1) order by `u`.`UserID` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `egi5_different_theme&keybinding`
--

/*!50001 DROP VIEW IF EXISTS `egi5_different_theme&keybinding`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `egi5_different_theme&keybinding` AS select `u`.`UserID` AS `UserID`,`u`.`Username` AS `Username`,`e`.`Theme` AS `Theme`,`e`.`KeyBinding` AS `KeyBinding`,`pg`.`Name` AS `Playground` from ((`user` `u` join `playground` `pg`) join `editor` `e`) where ((`u`.`UserID` = `pg`.`UserID`) and (`pg`.`PlaygroundID` = `e`.`PlaygroundID`) and (`e`.`KeyBinding` <> 'Standard') and (`e`.`Theme` <> 'Standard')) group by `u`.`Username`,`u`.`UserID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fabio2_plan&discussion`
--

/*!50001 DROP VIEW IF EXISTS `fabio2_plan&discussion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fabio2_plan&discussion` AS select `u`.`UserID` AS `UserID`,`m`.`PlanName` AS `PlanName`,`d`.`Title` AS `Title` from ((`discussion` `d` join `user` `u`) join `membership` `m`) where ((`d`.`UserID` = `u`.`UserID`) and (`u`.`UserID` = `m`.`UserID`)) order by `u`.`UserID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `discussion_view`
--

/*!50001 DROP VIEW IF EXISTS `discussion_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `discussion_view` AS select `d`.`Title` AS `Thread`,`q`.`QuestionName` AS `QuestionName`,`u`.`Username` AS `UserName`,`d`.`Description` AS `Description` from ((`user` `u` join `discussion` `d`) join `question` `q`) where ((`u`.`UserID` = `d`.`UserID`) and (`q`.`QuestionID` = `d`.`QuestionID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `enest1_c&accepted`
--

/*!50001 DROP VIEW IF EXISTS `enest1_c&accepted`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `enest1_c&accepted` AS select `submission`.`SubmissionID` AS `SubmissionID`,`submission`.`SubmissionStatus` AS `SubmissionStatus`,`submission`.`SubmissionTime` AS `SubmissionTime`,`submission`.`Date` AS `Date`,`submission`.`Code` AS `Code`,`submission`.`Runtime` AS `Runtime`,`submission`.`Memory` AS `Memory`,`submission`.`Language` AS `Language`,`submission`.`QuestionID` AS `QuestionID`,`submission`.`UserID` AS `UserID` from `submission` where ((`submission`.`SubmissionStatus` = 'Accepted') and (`submission`.`Language` = 'C')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `kristi2_person&skills`
--

/*!50001 DROP VIEW IF EXISTS `kristi2_person&skills`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kristi2_person&skills` AS select `c`.`PersonID` AS `PersonID`,`c`.`PhoneNumber` AS `PhoneNumber`,`bs`.`Skills` AS `Skills` from (`contact` `c` join `background_skills` `bs`) where ((`c`.`PersonID` between 1 and 5) and (`c`.`PersonID` = `bs`.`PersonID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fabio5_location&discussion`
--

/*!50001 DROP VIEW IF EXISTS `fabio5_location&discussion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fabio5_location&discussion` AS select `p`.`PersonID` AS `PersonID`,`p`.`FirstName` AS `FirstName`,`p`.`LastName` AS `LastName`,`l`.`Country` AS `Country`,`l`.`City` AS `City` from ((`location` `l` join `person` `p`) join `user` `u`) where ((`p`.`PersonID` = `l`.`PersonID`) and (`u`.`UserID` = `p`.`UserID`) and `u`.`UserID` in (select `d`.`UserID` from `discussion` `d` group by `d`.`UserID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'main'
--



-- Dump completed on 2022-06-12 21:04:37
