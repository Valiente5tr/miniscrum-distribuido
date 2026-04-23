/**
 * @file init.sql
 * @description 
 * @author Valiente5tr: Juan V. Arenas
 * @copyright Abril 2026. Derechos de los good
 */

CREATE DATABASE IF NOT EXISTS miniscrum;

USE miniscrum;

CREATE TABLE IF NOT EXISTS tasks (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(150) NOT NULL,
  description TEXT,
  estimated_hours DECIMAL(5,2) NOT NULL,
  scrum_points INT NOT NULL,
  status ENUM('Pendiente', 'En proceso', 'Terminada') DEFAULT 'Pendiente',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);