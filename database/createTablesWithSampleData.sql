-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2015 at 05:55 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.7

drop database if exists govalley;
create database govalley;
use govalley;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `govalley_sampleData`
--

-- --------------------------------------------------------

--
-- Table structure for table `last_edit`
--

CREATE TABLE `last_edit` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `problem_id` int(4) NOT NULL,
  `content` varchar(1500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `last_edit`
--

INSERT INTO `last_edit` (`id`, `user_id`, `problem_id`, `content`) VALUES
(1, 1, 1, '\npublic class Solution {\n  public int[] solve(int[] array) {\n    if(array == null || array.length == 0)\n      return array;\n    int global, temp;\n    for(int i = 0; i < array.length - 1; i++) {\n      global = i;\n      for(int j = i + 1; j < array.length; j++) {\n        if(array[j] < a[global]) {\n          global = j;\n        }\n      }\n      temp = a[i];\n      a[i] = a[global];\n      a[global] = temp;\n    }\n    return array;\n  }\n}');

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `assumption` varchar(1000) DEFAULT NULL,
  `example` varchar(1000) DEFAULT NULL,
  `tips` varchar(500) DEFAULT NULL,
  `annotation` varchar(500) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `lesson` varchar(20) DEFAULT NULL,
  `plan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`id`, `name`, `description`, `assumption`, `example`, `tips`, `annotation`, `level`, `category`, `lesson`, `plan`) VALUES
(1, 'Selection Sort', 'Given an array of integers, sort the elements in the array in ascending order. The selection sort algorithm should be used to solve this problem.', NULL, NULL, NULL, NULL, 'easy', 'Data Structure', NULL, 'class'),
(2, 'Merge Sort', 'Given an array of integers, sort the elements in the array in ascending order. The merge sort algorithm should be used to solve this problem.', NULL, NULL, NULL, NULL, 'easy', 'Data Structure', NULL, 'class'),
(3, 'Quick Sort', 'Given an array of integers, sort the elements in the array in ascending order. The quick sort algorithm should be used to solve this problem.', NULL, NULL, NULL, NULL, 'easy', 'Data Structure', NULL, 'class');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int(10) NOT NULL,
  `submit_id` int(10) NOT NULL,
  `content` varchar(1500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `submit_id`, `content`) VALUES
(1, 1, '\npublic class Solution {\n  public int[] solve(int[] array) {\n    if(array == null || array.length == 0)\n      return array;\n    int global, temp;\n    for(int i = 0; i < array.length - 1; i++) {\n      global = i;\n      for(int j = i + 1; j < array.length; j++) {\n        if(array[j] < array[global]) {\n          global = j;\n        }\n      }\n      temp = array[i];\n      array[i] = array[global];\n      array[global] = temp;\n    }\n    return array;\n  }\n}'),
(2, 2, '\npublic class Solution {\n  public int[] solve(int[] array) {\n    if(array == null || array.length == 0)\n      return array;\n    int global, temp;\n    for(int i = 0; i < array.length - 1; i++) {\n      global = i;\n      for(int j = i + 1; j < array.length; j++) {\n        if(array[j] < a[global]) {\n          global = j;\n        }\n      }\n      temp = a[i];\n      a[i] = a[global];\n      a[global] = temp;\n    }\n    return array;\n  }\n}'),
(3, 3, '\npublic class Solution {\n  public int[] mergeSort(int[] array) {\n    if(array == null || array.length <= 1)\n      return array;\n    int[] helper = new int[array.length];\n    doSort(array, helper, 0, array.length - 1);\n    return array;\n  }\n  \n  private void doSort(int[] array, int[] helper, int left, int right) {\n    if(left >= right) {\n      return;\n    }\n    int mid = left + (right - left) / 2;\n    doSort(array, helper, left, mid);\n    doSort(array, helper, mid + 1, right);\n    merge(array, helper, left, right);\n  }\n  \n  private void merge(int[] array, int[] helper, int left, int right) {\n    for(int i = left; i <= right; i++) {\n      helper[i] = array[i];\n    }\n    int mid = left + (right - left) / 2;\n    int leftIndex = left;\n    int rightIndex = mid + 1;\n    while(leftIndex <= mid && rightIndex <= right) {\n      if(helper[leftIndex] <= helper[rightIndex]) {\n        array[left++] = helper[leftIndex++];\n      } else {\n        array[left++] = helper[rightIndex++];\n      }\n    }\n    while(leftIndex <= mid) {\n      array[left++] = helper[leftIndex++];\n    }\n  }\n}'),
(4, 4, '\npublic class Solution {\n  public int[] mergeSort(int[] array) {\n    if(array == null || array.length <= 1)\n      return array;\n    int[] helper = new int[array.length];\n    doSort(array, helper, 0, array.length - 1)\n    return array;\n  }\n  \n  private void doSort(int[] array, int[] helper, int left, int right) {\n    if(left >= right) {\n      return;\n    }\n    int mid = left + (right - left) / 2;\n    doSort(array, helper, left, mid);\n    doSort(array, helper, mid + 1, right);\n    merge(array, helper, left, right);\n  }\n  \n  private void merge(int[] array, int[] helper, int left, int right) {\n    for(int i = left; i <= right; i++) {\n      helper[i] = array[i];\n    }\n    int mid = left + (right - left) / 2;\n    int leftIndex = left;\n    int rightIndex = mid + 1;\n    while(leftIndex <= mid && rightIndex <= right) {\n      if(helper[leftIndex] <= helper[rightIndex]) {\n        array[left++] = helper[leftIndex++];\n      } else {\n        array[left++] = helper[rightIndex++];\n      }\n    }\n    while(leftIndex <= mid) {\n      array[left++] = helper[leftIndex++];\n    }\n  }\n}'),
(5, 5, '\npublic class Solution {\n  public int[] mergeSort(int[] array) {\n    if(array == null || array.length <= 1)\n      return array;\n    int[] helper = new int[array.length];\n    doSort(array, helper, 0, array.length - 1);\n    return array;\n  }\n  \n  private void doSort(int[] array, int[] helper, int left, int right) {\n    if(left >= right) {\n      return;\n    }\n    int mid = left + (right - left) / 2;\n    doSort(array, helper, left, mid);\n    doSort(array, helper, mid - 1, right);\n    merge(array, helper, left, right);\n  }\n  \n  private void merge(int[] array, int[] helper, int left, int right) {\n    for(int i = left; i <= right; i++) {\n      helper[i] = array[i];\n    }\n    int mid = left + (right - left) / 2;\n    int leftIndex = left;\n    int rightIndex = mid + 1;\n    while(leftIndex <= mid && rightIndex <= right) {\n      if(helper[leftIndex] <= helper[rightIndex]) {\n        array[left++] = helper[leftIndex++];\n      } else {\n        array[left++] = helper[rightIndex++];\n      }\n    }\n    while(leftIndex <= mid) {\n      array[left++] = helper[leftIndex++];\n    }\n  }\n}'),
(6, 6, '\npublic class Solution {\n  public int[] solve(int[] array) {\n    if(array == null || array.length == 0)\n      return array;\n    int global, temp;\n    for(int i = 0; i < array.length - 1; i++) {\n      global = i;\n      for(int j = i + 1; j < array.length; j++) {\n        if(array[j] < array[global]) {\n          global = j;\n        }\n      }\n      temp = array[i];\n      array[i] = array[global];\n      array[global] = temp;\n    }\n    return array;\n  }\n}');

-- --------------------------------------------------------

--
-- Table structure for table `submits`
--

CREATE TABLE `submits` (
  `id` int(10) NOT NULL,
  `problem_id` int(4) NOT NULL,
  `user_id` int(10) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `result` varchar(20) NOT NULL,
  `runtime` varchar(20) NOT NULL,
  `flag` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submits`
--

INSERT INTO `submits` (`id`, `problem_id`, `user_id`, `time`, `result`, `runtime`, `flag`) VALUES
(1, 1, 1, '2015-08-03 22:36:59', 'successs', '500', 'success'),
(2, 1, 1, '2015-08-03 22:38:16', 'runtime error', '500', 'success'),
(3, 2, 1, '2015-08-04 02:15:22', 'success', '500', 'success'),
(4, 2, 1, '2015-08-04 02:17:40', 'compile error', '500', 'success'),
(5, 2, 1, '2015-08-04 02:18:31', 'wrong Answer', '500', 'success'),
(6, 1, 1, '2015-08-04 02:19:13', 'wrong Answer', '500', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `test_cases`
--

CREATE TABLE `test_cases` (
  `id` int(10) NOT NULL,
  `problem_id` int(4) NOT NULL,
  `content` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_cases`
--

INSERT INTO `test_cases` (`id`, `problem_id`, `content`) VALUES
(1, 1, '{[3,2,1,4,5]}'),
(2, 1, '{[]}'),
(3, 1, '{[0,0,0]}'),
(4, 2, '{[0,0,1]}'),
(5, 2, '{[2,0,1]}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `major` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `info_source` varchar(50) NOT NULL,
  `salt` char(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `major`, `profession`, `company`, `info_source`, `salt`) VALUES
(1, 'niu001', '123456', 'niu@test.com', 'CS', 'software engineer', 'Baidu', 'from friends', 'abcdefg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `last_edit`
--
ALTER TABLE `last_edit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `problem_id` (`problem_id`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submit_id` (`submit_id`);

--
-- Indexes for table `submits`
--
ALTER TABLE `submits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `problem_id` (`problem_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `test_cases`
--
ALTER TABLE `test_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `problem_id` (`problem_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `last_edit`
--
ALTER TABLE `last_edit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `submits`
--
ALTER TABLE `submits`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `test_cases`
--
ALTER TABLE `test_cases`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `last_edit`
--
ALTER TABLE `last_edit`
  ADD CONSTRAINT `last_edit_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `last_edit_ibfk_2` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`);

--
-- Constraints for table `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `submissions_ibfk_1` FOREIGN KEY (`submit_id`) REFERENCES `submits` (`id`);

--
-- Constraints for table `submits`
--
ALTER TABLE `submits`
  ADD CONSTRAINT `submits_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`),
  ADD CONSTRAINT `submits_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `test_cases`
--
ALTER TABLE `test_cases`
  ADD CONSTRAINT `test_cases_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`);
