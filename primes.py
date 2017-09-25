"""
Module designed for Vauxoo technical test

Classes:
    PrimeClass: class designed for calculating prime numbers

"""


class PrimeClass(object):
    """
    Class to manipulate prime numbers
    """

    def is_prime(self, num_int):
        """
        Method that determines if a given number is prime

        Args:
            num_int (int): number to determine if it is prime

        Returns:
            True if the num_int parameter is prime, otherwise False
        """

        if num_int < 2:
            return False

        prime_flag = True
        for num in range(2, num_int):
            if num_int % num == 0:
                prime_flag = False
                break

        return prime_flag
