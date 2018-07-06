/*
 * dweet.h
 *
 *  Created on: 14 de jun de 2018
 *      Author: tpv
 */

#ifndef DWEET_H_
#define DWEET_H_
#define DEFAULT_BUFFER_SIZE		480

int dweetsend(char* thing, char* data);
int dweetget(char* thing);


#endif /* DWEET_H_ */
