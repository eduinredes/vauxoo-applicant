"""
Module designed for Vauxoo technical test

Classes:
    CalculatorClass: class designed to operate with numbers

"""


class CalculatorClass(object):
    """
    Class to perform numerical calculations
    """

    def sum(self, num_list):
        """
        Method that sums all the elements of a given array

        Args:
            num_list (list of int): list of numbers to add together

        Returns:
            The total for adding the given list of numbers
        """

        sum_total = 0

        for num in num_list:
            sum_total += num

        return sum_total
