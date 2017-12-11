-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2017 at 08:24 AM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `RCDTU`
--

-- --------------------------------------------------------

--
-- Table structure for table `Executive_Board`
--

CREATE TABLE `Executive_Board` (
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `institutionworkplace` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `delegateexperience` int(11) NOT NULL,
  `delegateexperienceeb` int(11) NOT NULL,
  `achivements` text NOT NULL,
  `ebexperience` varchar(500) NOT NULL,
  `category_list` varchar(200) NOT NULL,
  `preference` varchar(100) NOT NULL,
  `why` text NOT NULL,
  `agendas` text NOT NULL,
  `relevance` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Executive_Board`
--
ALTER TABLE `Executive_Board`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Executive_Board`
--
ALTER TABLE `Executive_Board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;