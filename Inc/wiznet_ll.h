/*
 * wiznet_ll.h
 *
 *  Created on: 18 de jun de 2018
 *      Author: tpv
 */

#ifndef WIZNET_LL_H_
#define WIZNET_LL_H_
#include <stdint.h>

void cs_sel();
void cs_desel();
uint8_t spi_rb(void);
void spi_wb(uint8_t b);

#endif /* WIZNET_LL_H_ */
