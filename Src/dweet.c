/*
 * dweet.c
 *
 *  Created on: 14 de jun de 2018
 *      Author: tpv
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "util.h"
#include "dweet.h"
#include "stm32f1xx_hal.h"
#include "socket.h"

uint8_t Sn = 1;
uint8_t ip_server[4] = {172,31,141,151};   ///< dweet IP
uint16_t port_server = 3001;

int dweetsend(char* thing, char* data) {
	int ret = 0;
	char message[DEFAULT_BUFFER_SIZE];
	memset(message, 0, DEFAULT_BUFFER_SIZE);
	//Establishing connection with dweet.io
	while(socket(Sn,Sn_MR_TCP,port_server,SF_TCP_NODELAY) != SOCK_OK);
	struct hostent *h;
	//inet_addr_("http://www.dweet.io",&ip_server);
	while(connect(Sn,ip_server,port_server) != SOCK_OK );
	//Sending POST request with json content
	char _atCommand[300];
	memset(_atCommand, 0, 300);
	sprintf(_atCommand, "POST /dweet/for/%s HTTP/1.1\r\nHost: dweet.io\r\nUser-Agent: Arduino/1.0\r\nAccept: application/json\r\nConnection: close\r\nContent-Type: application/json\r\nContent-Length: %u\r\n\r\n%s\r\n", thing, strlen(data),data);
	ret = send(1,_atCommand,sizeof(_atCommand));
	HAL_Delay(800); // delay is necessary to receive the anwser of dweet.io server
	close(Sn);
	return 1;
	/*Read_Data(message);
	if (ret == ESP8266_RESPONSE_FINISHED) {
		if(match(message,"succeeded")){
			ESP8266_Close();
			return true;
		}
		else {
			ESP8266_Close();
			return false;
		}
	}
	ESP8266_Close();
	return false;
	*/
}
/*
int dweetget(char* thing) {
	int ret= 0;
	  char message[DEFAULT_BUFFER_SIZE];
	  memset(message, 0, DEFAULT_BUFFER_SIZE);
	//Establishing connection with dweet.io
	while(ESP8266_Conect_To_Server(0,"dweet.io","80",60) != ESP8266_RESPONSE_FINISHED);
	//Sending GET request
	char _atCommand[300];
	memset(_atCommand, 0, 300);
	sprintf(_atCommand, "GET /get/latest/dweet/for/%s HTTP/1.1\r\nHost: dweet.io\r\nUser-Agent: Arduino/1.0\r\nAccept: application/json\r\nConnection: close\r\n\r\n", thing);
	ret = ESP8266_Send(_atCommand);
	HAL_Delay(500);
	Read_Data(message);
	if (ret == ESP8266_RESPONSE_FINISHED) {
		ESP8266_Close();
		return 1;
	}
	return -1;
}
*/
