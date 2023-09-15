/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   server.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jrus-gar <jrus-gar@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/14 19:00:15 by jrus-gar          #+#    #+#             */
/*   Updated: 2023/09/15 23:47:18 by jrus-gar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

void	ft_putnbr_fd(int n, int fd)
{
	long	nbr;

	nbr = n;
	if (nbr < 0)
	{
		write(fd, "-", 1);
		nbr *= -1;
	}
	if (nbr > 9)
	{
		ft_putnbr_fd(nbr / 10, fd);
		nbr %= 10;
	}
	nbr += '0';
	write(fd, &nbr, 1);
}

int	main(void)
{
	struct sigaction	info;

	info.sa_flags = SA_SIGINFO;
	//info.sa_sigaction =

	write(1, GREEN "\nServer Active\n" RESET_COLOR, 25);
	write(1, YELLOW "\nPID: " RESET_COLOR, 13);
	ft_putnbr_fd(getpid(), 0);
	write(1, "\n\n", 2);

	sigaction(SIGUSR1, &info, NULL); //no necesitamos contexto
	sigaction(SIGUSR2, &info, NULL);
	while(1)
		pause();
	return(0);
}
