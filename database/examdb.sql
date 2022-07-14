-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 03:28 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintable`
--

CREATE TABLE `admintable` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admintable`
--

INSERT INTO `admintable` (`userid`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `instructiontable`
--

CREATE TABLE `instructiontable` (
  `instruction` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructiontable`
--

INSERT INTO `instructiontable` (`instruction`) VALUES
('Finish exam within the time allotted'),
('Each Question is allotted 30 seconds of time'),
('Attempt all questions before submitting');

-- --------------------------------------------------------

--
-- Table structure for table `questiontable`
--

CREATE TABLE `questiontable` (
  `question` varchar(200) NOT NULL,
  `a` varchar(40) DEFAULT NULL,
  `b` varchar(40) DEFAULT NULL,
  `c` varchar(40) DEFAULT NULL,
  `d` varchar(40) DEFAULT NULL,
  `answer` varchar(1) DEFAULT NULL,
  `subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questiontable`
--

INSERT INTO `questiontable` (`question`, `a`, `b`, `c`, `d`, `answer`, `subject`) VALUES
('In which language is Python written?', 'English', 'PHP', 'C', 'All of the above', 'c', 'Python'),
('In which year was the Python 3.0 version developed?', '2008', '2000', '2010', '2005', 'a', 'Python'),
('In which year was the Python language developed?', '1995', '1972', '1981', '1989', 'd', 'Python'),
('Number of primitive data types in Java are?', '6', '7', '8', '9', 'c', 'Java'),
('What do we use to define a block of code in Python language?', 'Key', 'Brackets', 'Indentation', 'None of these', 'c', 'Python'),
('What is the extension of compiled java classes?', '.txt', '.js', '.class', '.java', 'c', 'Java'),
('What is the extension of java code files?', '.js', '.txt', '.class', '.java', 'd', 'Java'),
('What is the maximum possible length of an identifier?', '16', '32', '64', 'None of these above', 'd', 'Python'),
('What is the method inside the class in python language?', 'Object', 'Function', 'Attribute', 'Argument', 'b', 'Python'),
('Which character is used in Python to make a single line comment?', '/', '//', '#', '!', 'c', 'Python'),
('Which component is used to compile, debug and execute the java programs?', 'JRE', 'JIT', 'JDK', 'JVM', 'c', 'Java'),
('Which environment variable is used to set the java path?', 'MAVEN_Path', 'JavaPATH', 'JAVA', 'JAVA_HOME', 'd', 'Java'),
('Which of the following declarations is incorrect?', '_x = 2', '__x = 3', '__xyz__ = 5', 'None of these', 'd', 'Python'),
('Which of the following is not a keyword in Python language?', 'val', 'raise', 'try', 'with', 'a', 'Python'),
('Which of the following is not an OOPS concept in Java?', 'Polymorphism', 'Inheritance', 'Compilation', 'Encapsulation', 'c', 'Java'),
('Which of these are selection statements in Java?', 'break', 'continue', 'for()', 'if()', 'd', 'Java'),
('Which of these cannot be used for a variable name in Java?', 'identifier & keyword', 'identifier', 'keyword', 'none of the mentioned', 'c', 'Java'),
('Which one of the following is not a Java feature?', 'Object-oriented', 'Use of pointers', 'Portable', 'Dynamic and Extensible', 'b', 'Java'),
('Which one of the following is the correct extension of the Python file?', '.py', '.python', '.p', 'None of these', 'a', 'Python'),
('Who developed the Python language?', 'Zim Den', 'Guido van Rossum', 'Niene Stom', 'Wick van Rossum', 'b', 'Python'),
('Who invented Java Programming?', 'Guido van Rossum', 'James Gosling', 'Dennis Ritchie', 'Bjarne Stroustrup', 'b', 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `resultstable`
--

CREATE TABLE `resultstable` (
  `username` varchar(15) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `questions` int(11) NOT NULL,
  `attempted` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resultstable`
--

INSERT INTO `resultstable` (`username`, `subject`, `questions`, `attempted`, `correct`, `wrong`, `time`) VALUES
('sarin', 'Python', 11, 11, 9, 2, '2022-07-14 18:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `studenttable`
--

CREATE TABLE `studenttable` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studenttable`
--

INSERT INTO `studenttable` (`userid`, `password`, `name`) VALUES
('sarin', '12345678', 'Sarin Alexander'),
('thayib', '12345678', 'Mohd Thayib');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintable`
--
ALTER TABLE `admintable`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `questiontable`
--
ALTER TABLE `questiontable`
  ADD PRIMARY KEY (`question`,`subject`);

--
-- Indexes for table `resultstable`
--
ALTER TABLE `resultstable`
  ADD PRIMARY KEY (`username`,`time`);

--
-- Indexes for table `studenttable`
--
ALTER TABLE `studenttable`
  ADD PRIMARY KEY (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
