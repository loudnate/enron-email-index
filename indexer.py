# import cpickle
import glob
import pdb

from marisa-trie import RecordTrie


def main():
	all_files = glob.glob('./data/skilling-j/*/*.') # sample set - 4129 emails
	# all_files = glob.glob('./data/*/*/*.')

	#search_table = RecordTrie()


def index_email(index, email):
	"""Tokenizes a text file and adds each word to the trie table."""

	pass


if __name__ == '__main__':
	main()
