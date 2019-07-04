#!/usr/bin/env cythonize -i
# cython: language_level=3

"""Documentation of the module."""


def primes(int nb):
    """Return the first nb primes."""
    cdef int p[1000]
    cdef int i, n, np

    n = 2
    np = 0

    while np < nb:
        for i in p[:np]:
            if n % i == 0:
                break
        else:
            p[np] = n
            np += 1

        n += 1

    res = [prime for prime in p[:np]]

    return res
