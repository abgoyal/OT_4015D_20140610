/*
 * Copyright (C) 2008 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <hardware/sensors.h>
#include <linux/hwmsensor.h>
#include "hwmsen_custom.h"

//FR 437100 and 437101 llf 20130427
struct sensor_t sSensorList[MAX_NUM_SENSORS] = 
{
	/*MT6516 the spec follows ADXL345*/
/*
	{  
		.name       = "MT6516 3-axis Accelerometer",
		.vendor     = "The Android Open Source Project",
		.version    = 1,
		.handle     = ID_ACCELEROMETER,
		.type       = SENSOR_TYPE_ACCELEROMETER,
		.maxRange   = 32.0f,
		.resolution = 4.0f/1024.0f,
		.power      =130.0f/1000.0f,
		.reserved   = {}
	},
*/
	{  
		.name       = "bma222e/kxtj2 3-axis Accelerometer",
		.vendor     = "The Android Open Source Project",
		.version    = 1,
		.handle     = ID_ACCELEROMETER,
		.type       = SENSOR_TYPE_ACCELEROMETER,
		.maxRange   = 32.0f,
		.resolution = 4.0f/1024.0f,
		.power      =130.0f/1000.0f,
		.reserved   = {}
	},        

	{ 
		.name       = "tmd2772 Proximity Sensor",
		.vendor     = "Capella",
		.version    = 1,
		.handle     = ID_PROXIMITY,
		.type       = SENSOR_TYPE_PROXIMITY,
		.maxRange   = 1.00f,
		.resolution = 1.0f,
		.power      = 0.13f,
		.reserved   = {}
	},

	{ 
		.name       = "tmd2772 Light Sensor",
		.vendor     = "Capella",
		.version    = 1,
		.handle     = ID_LIGHT,
		.type       = SENSOR_TYPE_LIGHT,
		.maxRange   = 10240.0f,
		.resolution = 1.0f,
		.power      = 0.13f,
		.reserved   = {}
	},	
};

