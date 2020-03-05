<?php 

	if (!defined('BASEPATH')) exit('No direct script access allowed');
	require_once('PHPExcel.php'); 
	
	/**
	 *  
	 */
	class Excel extends PHPExcel
	{
		
		function __construct(argument)
		{
			parent::__construct();
		}
	}
?>