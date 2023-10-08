select  distinct *                             # the distinct operator makes it so they only list the same result once instead of every instance.
from productlines
where productline like "%cars%";               # when searching for rows of data that contain a certain word use LIKE instead of = and use % at both sides of the word to mean containing"%cars%".
											                         # If the % it as the front it means begin with if it is at the end it means ending with "%cars" and "cars %".
