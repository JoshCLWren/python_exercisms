class Matrix:

    def __init__(self, matrix_string):
        self.matrix_string = matrix_string
        self.starter_list = []

    def row(self, index):
        if "\n" in self.matrix_string:
            self.split_up = self.matrix_string.split("\n")
            the_row = self.split_up[index - 1]
            for i in the_row.split(" "):
                self.starter_list.append(int(i))
            return self.starter_list
        else:
            self.split_up = []
            self.split_up.append([int(self.matrix_string)])
            return self.split_up[index - 1]

    def column(self, index):
        new_lines_who_dis = self.matrix_string.split("\n")
        column_result = []
        for rows in new_lines_who_dis:
            self.starter_list.append([rows])
        for almost_numbers in self.starter_list:
            numbers = almost_numbers[0].split(" ")
            column_result.append(int(numbers[index - 1]))
        return column_result
