#!/usr/bin/python -tt
from __future__ import print_function
import nltk
import sys

# For unigrams: Given a text file (say, a file of all an artist's lyrics), returns a
# list of unigrams.
def unigram_list(filename):
	f = open(filename, 'rU')
	text = f.read() # Stores the entire text as a string
	text = text.lower() # Converts text string to lower-case
	text_tok = nltk.word_tokenize(text) # Stores a list of all the words in the
		# file
	f.close()
	return text_tok


# For bigrams: Given a text file, returns a list of bigrams.
def bigram_list(filename):
	f = open(filename, 'rU')
	text = f.read() # Stores the entire text as a string
	text = text.lower() # Converts text string to lower-case
	text_tok = nltk.word_tokenize(text) # Stores a list of all the words in the
		# file
	length = len(text_tok) # Stores length of text
	bigrams = [] # To store the non-unique bigrams
	currentInd = 0
	for word in text_tok:
		if currentInd + 1 < length:
			bigrams.append((text_tok[currentInd], text_tok[currentInd + 1]))
			currentInd += 1
		else:
			break
	f.close()
	return bigrams


# For trigrams: Given a text file, returns a list of trigrams.
def trigram_list(filename):
	f = open(filename, 'rU')
	text = f.read() # Stores the entire text as a string
	text = text.lower() # Converts text string to lower-case
	text_tok = nltk.word_tokenize(text) # Stores a list of all the words in the
		# file
	length = len(text_tok) # Stores length of text
	trigrams = [] # To store the non-unique trigrams
	currentInd = 0
	for word in text_tok:
		if currentInd + 2 < length:
			trigrams.append((text_tok[currentInd], text_tok[currentInd + 1], text_tok[currentInd + 2]))
			currentInd += 1
		else:
			break
	f.close()
	return trigrams


# For 4-grams: Given a text file, returns a list of 4-grams.
def four_gram_list(filename):
	f = open(filename, 'rU')
	text = f.read() # Stores the entire text as a string
	text = text.lower() # Converts text string to lower-case
	text_tok = nltk.word_tokenize(text) # Stores a list of all the words in the
		# file
	length = len(text_tok) # Stores length of text
	four_grams = [] # To store the non-unique four_grams
	currentInd = 0
	for word in text_tok:
		if currentInd + 3 < length:
			four_grams.append((text_tok[currentInd], text_tok[currentInd + 1], text_tok[currentInd + 2], text_tok[currentInd + 3]))
			currentInd += 1
		else:
			break
	f.close()
	return four_grams


# For 5-grams: Given a text file, returns a list of 5-grams.
def five_gram_list(filename):
	f = open(filename, 'rU')
	text = f.read() # Stores the entire text as a string
	text = text.lower() # Converts text string to lower-case
	text_tok = nltk.word_tokenize(text) # Stores a list of all the words in the
		# file
	length = len(text_tok) # Stores length of text
	five_grams = [] # To store the non-unique five_grams
	currentInd = 0
	for word in text_tok:
		if currentInd + 4 < length:
			five_grams.append((text_tok[currentInd], text_tok[currentInd + 1], text_tok[currentInd + 2], text_tok[currentInd + 3], text_tok[currentInd + 4]))
			currentInd += 1
		else:
			break
	f.close()
	return five_grams


# For 6-grams: Given a text file, returns a list of 6-grams.
def six_gram_list(filename):
	f = open(filename, 'rU')
	text = f.read() # Stores the entire text as a string
	text = text.lower() # Converts text string to lower-case
	text_tok = nltk.word_tokenize(text) # Stores a list of all the words in the
		# file
	length = len(text_tok) # Stores length of text
	six_grams = [] # To store the non-unique six_grams
	currentInd = 0
	for word in text_tok:
		if currentInd + 5 < length:
			six_grams.append((text_tok[currentInd], text_tok[currentInd + 1], text_tok[currentInd + 2], text_tok[currentInd + 3], text_tok[currentInd + 4], text_tok[currentInd + 5]))
			currentInd += 1
		else:
			break
	f.close()
	return six_grams


from nltk import FreqDist
# Given a list of n-grams, returns a dict mapping each n-gram to its frequency.
def fdist_maker(ngrams):
	fdist = FreqDist(ngrams)
	return fdist


# Given an n-gram frequency distribution dict.items() list, a begin value, and
# a cut-off value, builds a list that only contains the most common n-grams
# from begin up to cutoff.
def top_ngrams_list_maker(ngrams_fdist_dict_list, begin, cutoff):
	sorted_ngrams_fdist_dict_list = sorted(ngrams_fdist_dict_list, key=lambda ngram: ngram[1], reverse=True)
	top_ngrams_fdist_dict_list = sorted_ngrams_fdist_dict_list[(begin - 1):(cutoff - 1)]
	top_ngrams_list = []
	for item in top_ngrams_fdist_dict_list:
		top_ngrams_list.append(item[0])
	return top_ngrams_list


from os import listdir
from os.path import isfile, join
# Given a directory, returns a list of all the file-names (not including the path)
# Usage example: file_list('/home/mulhollandm2/test')
def file_list(dir):
	files = [ f for f in listdir(dir) if isfile(join(dir,f)) ]
	return files


# It might be a good idea to use the lemmatized version of the files so that things
# don't get counted twice, etc.
def main():
	if len(sys.argv) != 17:
		print('usage: ./ngrams_2.py /path/to/suicide/artist/files/dir/ /path/to/non-suicide/artist/files/dir/ /path/to/test-songs/dir/ /path/to/dir/where/you/want/stats/file/filename.txt begin1 cutoff1 begin2 cutoff2 begin3 cutoff3 begin4 cutoff4 begin5 cutoff5 begin6 cutoff6')
		print('You can of course optionally pipe the results to a file by tacking on \"> /path/to/folder/where/you/want/results.csv\"')
		sys.exit(1)
		
	suicide_artist_files_dirpath = sys.argv[1] # dir for suicide artist files
	nonsuicide_artist_files_dirpath = sys.argv[2] # dir for nonsuicide artist
		# files
	songs_dirpath = sys.argv[3] # dir for songs
	
	suicide_artist_files = file_list(suicide_artist_files_dirpath) # Stores a
		# list of the files in the suicide artists directory
	nonsuicide_artist_files = file_list(nonsuicide_artist_files_dirpath)
		# Stores a list of the files in the artists directory
	songs_files = file_list(songs_dirpath) # Stores a list of the files in the
		# songs dir
	stats_file_full_path = sys.argv[4] # Stores full path to stats file
	
	# begin and cutoff for unigrams (read from CL, then parse as ints)
	begin_unigrams = sys.argv[5]
	cutoff_unigrams = sys.argv[6]
	begin_unigrams = int(begin_unigrams)
	cutoff_unigrams = int(cutoff_unigrams)
	
	# begin and cutoff for bigrams
	begin_bigrams = sys.argv[7]
	cutoff_bigrams = sys.argv[8]
	begin_bigrams = int(begin_bigrams)
	cutoff_bigrams = int(cutoff_bigrams)
	
	# begin and cutoff for trigrams
	begin_trigrams = sys.argv[9]
	cutoff_trigrams = sys.argv[10]
	begin_trigrams = int(begin_trigrams)
	cutoff_trigrams = int(cutoff_trigrams)
	
	# begin and cutoff for 4-grams
	begin_four_grams = sys.argv[11]
	cutoff_four_grams = sys.argv[12]
	begin_four_grams = int(begin_four_grams)
	cutoff_four_grams = int(cutoff_four_grams)
	
	# begin and cutoff for 5-grams
	begin_five_grams = sys.argv[13]
	cutoff_five_grams = sys.argv[14]
	begin_five_grams = int(begin_five_grams)
	cutoff_five_grams = int(cutoff_five_grams)
	
	# begin and cutoff for 6-grams
	begin_six_grams = sys.argv[15]
	cutoff_six_grams = sys.argv[16]
	begin_six_grams = int(begin_six_grams)
	cutoff_six_grams = int(cutoff_six_grams)
	
	stats_file = open(stats_file_full_path, 'wa')
	
	# Lists to store n-grams for suicide and non-suicide artists
	suicide_unigram_profile = []
	suicide_bigram_profile = []
	suicide_trigram_profile = []
	suicide_four_gram_profile = []
	suicide_five_gram_profile = []
	suicide_six_gram_profile = []
	nonsuicide_unigram_profile = []
	nonsuicide_bigram_profile = []
	nonsuicide_trigram_profile = []
	nonsuicide_four_gram_profile = []
	nonsuicide_five_gram_profile = []
	nonsuicide_six_gram_profile = []
	
	# Populate the suicide n-gram profiles with n-grams from actual artist
	# files.
	for artist_file in suicide_artist_files:
		suicide_unigram_profile.extend(unigram_list(suicide_artist_files_dirpath + artist_file))
		suicide_bigram_profile.extend(bigram_list(suicide_artist_files_dirpath + artist_file))
		suicide_trigram_profile.extend(trigram_list(suicide_artist_files_dirpath + artist_file))
		suicide_four_gram_profile.extend(four_gram_list(suicide_artist_files_dirpath + artist_file))
		suicide_five_gram_profile.extend(five_gram_list(suicide_artist_files_dirpath + artist_file))
		suicide_six_gram_profile.extend(six_gram_list(suicide_artist_files_dirpath + artist_file))
	
	# Populate the non-suicide n-gram profiles with n-grams from actual
	# artist files.
	for artist_file in nonsuicide_artist_files:
		nonsuicide_unigram_profile.extend(unigram_list(nonsuicide_artist_files_dirpath + artist_file))
		nonsuicide_bigram_profile.extend(bigram_list(nonsuicide_artist_files_dirpath + artist_file))
		nonsuicide_trigram_profile.extend(trigram_list(nonsuicide_artist_files_dirpath + artist_file))
		nonsuicide_four_gram_profile.extend(four_gram_list(nonsuicide_artist_files_dirpath + artist_file))
		nonsuicide_five_gram_profile.extend(five_gram_list(nonsuicide_artist_files_dirpath + artist_file))
		nonsuicide_six_gram_profile.extend(six_gram_list(nonsuicide_artist_files_dirpath + artist_file))
	
	# Print n-gram profile totals
	stats_file.write("# of suicide 1-grams: " + str(len(suicide_unigram_profile)) + "\n")
	stats_file.write("# of suicide 2-grams: " + str(len(suicide_bigram_profile)) + "\n")
	stats_file.write("# of suicide 3-grams: " + str(len(suicide_trigram_profile)) + "\n")
	stats_file.write("# of suicide 4-grams: " + str(len(suicide_four_gram_profile)) + "\n")
	stats_file.write("# of suicide 5-grams: " + str(len(suicide_five_gram_profile)) + "\n")
	stats_file.write("# of suicide 6-grams: " + str(len(suicide_six_gram_profile)) + "\n")
	stats_file.write("# of non-suicide 1-grams: " + str(len(nonsuicide_unigram_profile)) + "\n")
	stats_file.write("# of non-suicide 2-grams: " + str(len(nonsuicide_bigram_profile)) + "\n")
	stats_file.write("# of non-suicide 3-grams: " + str(len(nonsuicide_trigram_profile)) + "\n")
	stats_file.write("# of non-suicide 4-grams: " + str(len(nonsuicide_four_gram_profile)) + "\n")
	stats_file.write("# of non-suicide 5-grams: " + str(len(nonsuicide_five_gram_profile)) + "\n")
	stats_file.write("# of non-suicide 6-grams: " + str(len(nonsuicide_six_gram_profile)) + "\n\n\n")
	
	# Lists to store exclusive n-grams for suicide and non-suicide artists
	suicide_unigram_profile_exclusive = []
	suicide_bigram_profile_exclusive = []
	suicide_trigram_profile_exclusive = []
	suicide_four_gram_profile_exclusive = []
	suicide_five_gram_profile_exclusive = []
	suicide_six_gram_profile_exclusive = []
		# Initialize non-suicide exclusive profiles by simply copying the
		# the non-exclusive profiles, from which the overlap n-grams will
		# will be deleted.
	nonsuicide_unigram_profile_exclusive = []
	nonsuicide_bigram_profile_exclusive = []
	nonsuicide_trigram_profile_exclusive = []
	nonsuicide_four_gram_profile_exclusive = []
	nonsuicide_five_gram_profile_exclusive = []
	nonsuicide_six_gram_profile_exclusive = []
	
	# Create n-gram overlap list, containing all overlapping n-grams, no
	# matter the value of n.
	ngrams_overlap = []
	
	# Populate the exclusive n-gram suicide profile and overlap list
	for ngram in suicide_unigram_profile:
		if ngram not in nonsuicide_unigram_profile:
			suicide_unigram_profile_exclusive.append(ngram)
		elif ngram in nonsuicide_unigram_profile:
			ngrams_overlap.append(ngram)
	
	for ngram in suicide_bigram_profile:
		if ngram not in nonsuicide_bigram_profile:
			suicide_bigram_profile_exclusive.append(ngram)
		elif ngram in nonsuicide_bigram_profile:
			ngrams_overlap.append(ngram)
	
	for ngram in suicide_trigram_profile:
		if ngram not in nonsuicide_trigram_profile:
			suicide_trigram_profile_exclusive.append(ngram)
		elif ngram in nonsuicide_trigram_profile:
			ngrams_overlap.append(ngram)
	
	for ngram in suicide_four_gram_profile:
		if ngram not in nonsuicide_four_gram_profile:
			suicide_four_gram_profile_exclusive.append(ngram)
		elif ngram in nonsuicide_four_gram_profile:
			ngrams_overlap.append(ngram)
	
	for ngram in suicide_five_gram_profile:
		if ngram not in nonsuicide_five_gram_profile:
			suicide_five_gram_profile_exclusive.append(ngram)
		elif ngram in nonsuicide_five_gram_profile:
			ngrams_overlap.append(ngram)
	
	for ngram in suicide_six_gram_profile:
		if ngram not in nonsuicide_six_gram_profile:
			suicide_six_gram_profile_exclusive.append(ngram)
		elif ngram in nonsuicide_six_gram_profile:
			ngrams_overlap.append(ngram)
	
	# Populate the exclusive n-gram non-suicide profile
	for ngram in nonsuicide_unigram_profile:
		if ngram not in ngrams_overlap:
			nonsuicide_unigram_profile_exclusive.append(ngram)
	
	for ngram in nonsuicide_bigram_profile:
		if ngram not in ngrams_overlap:
			nonsuicide_bigram_profile_exclusive.append(ngram)
	
	for ngram in nonsuicide_trigram_profile:
		if ngram not in ngrams_overlap:
			nonsuicide_trigram_profile_exclusive.append(ngram)
	
	for ngram in nonsuicide_four_gram_profile:
		if ngram not in ngrams_overlap:
			nonsuicide_four_gram_profile_exclusive.append(ngram)
	
	for ngram in nonsuicide_five_gram_profile:
		if ngram not in ngrams_overlap:
			nonsuicide_five_gram_profile_exclusive.append(ngram)
	
	for ngram in nonsuicide_six_gram_profile:
		if ngram not in ngrams_overlap:
			nonsuicide_six_gram_profile_exclusive.append(ngram)
	
	# Make fdist dicts for each n-gram exclusive profile
	fdist_exclusive_suicide_unigrams = fdist_maker(suicide_unigram_profile_exclusive)
	fdist_exclusive_suicide_bigrams = fdist_maker(suicide_bigram_profile_exclusive)
	fdist_exclusive_suicide_trigrams = fdist_maker(suicide_trigram_profile_exclusive)
	fdist_exclusive_suicide_four_grams = fdist_maker(suicide_four_gram_profile_exclusive)
	fdist_exclusive_suicide_five_grams = fdist_maker(suicide_five_gram_profile_exclusive)
	fdist_exclusive_suicide_six_grams = fdist_maker(suicide_six_gram_profile_exclusive)
	fdist_exclusive_nonsuicide_unigrams = fdist_maker(nonsuicide_unigram_profile_exclusive)
	fdist_exclusive_nonsuicide_bigrams = fdist_maker(nonsuicide_bigram_profile_exclusive)
	fdist_exclusive_nonsuicide_trigrams = fdist_maker(nonsuicide_trigram_profile_exclusive)
	fdist_exclusive_nonsuicide_four_grams = fdist_maker(nonsuicide_four_gram_profile_exclusive)
	fdist_exclusive_nonsuicide_five_grams = fdist_maker(nonsuicide_five_gram_profile_exclusive)
	fdist_exclusive_nonsuicide_six_grams = fdist_maker(nonsuicide_six_gram_profile_exclusive)
	
	# Print exclusive n-gram profile totals
	stats_file.write("# of suicide 1-grams, exclusive: " + str(len(suicide_unigram_profile_exclusive)) + "\n")
	stats_file.write("# of suicide 2-grams, exclusive: " + str(len(suicide_bigram_profile_exclusive)) + "\n")
	stats_file.write("# of suicide 3-grams, exclusive: " + str(len(suicide_trigram_profile_exclusive)) + "\n")
	stats_file.write("# of suicide 4-grams, exclusive: " + str(len(suicide_four_gram_profile_exclusive)) + "\n")
	stats_file.write("# of suicide 5-grams, exclusive: " + str(len(suicide_five_gram_profile_exclusive)) + "\n")
	stats_file.write("# of suicide 6-grams, exclusive: " + str(len(suicide_six_gram_profile_exclusive)) + "\n")
	stats_file.write("# of non-suicide 1-grams, exclusive: " + str(len(nonsuicide_unigram_profile_exclusive)) + "\n")
	stats_file.write("# of non-suicide 2-grams, exclusive: " + str(len(nonsuicide_bigram_profile_exclusive)) + "\n")
	stats_file.write("# of non-suicide 3-grams, exclusive: " + str(len(nonsuicide_trigram_profile_exclusive)) + "\n")
	stats_file.write("# of non-suicide 4-grams, exclusive: " + str(len(nonsuicide_four_gram_profile_exclusive)) + "\n")
	stats_file.write("# of non-suicide 5-grams, exclusive: " + str(len(nonsuicide_five_gram_profile_exclusive)) + "\n")
	stats_file.write("# of non-suicide 6-grams, exclusive: " + str(len(nonsuicide_six_gram_profile_exclusive)) + "\n\n\n")
	
	# Record the begin and cutoff values in the stats_file for each
	# n-gram analysis
	stats_file.write("begin values:\n\n")
	stats_file.write("unigrams: " + str(begin_unigrams) + "\n")
	stats_file.write("bigrams: " + str(begin_bigrams) + "\n")
	stats_file.write("trigrams: " + str(begin_trigrams) + "\n")
	stats_file.write("4-grams: " + str(begin_four_grams) + "\n")
	stats_file.write("5-grams: " + str(begin_five_grams) + "\n")
	stats_file.write("6-grams: " + str(begin_six_grams) + "\n\n")
	stats_file.write("cut-off values:\n\n")
	stats_file.write("unigrams: " + str(cutoff_unigrams) + "\n")
	stats_file.write("bigrams: " + str(cutoff_bigrams) + "\n")
	stats_file.write("trigrams: " + str(cutoff_trigrams) + "\n")
	stats_file.write("4-grams: " + str(cutoff_four_grams) + "\n")
	stats_file.write("5-grams: " + str(cutoff_five_grams) + "\n")
	stats_file.write("6-grams: " + str(cutoff_six_grams))
	stats_file.close()
	
	# Make lists for top n-grams for each fdist exclusive n-gram dict.
	# Make sure that the cut-off values are the same across each n-gram
	# count so that the comparisons are valid.
	top_suicide_exclusive_unigrams = top_ngrams_list_maker(fdist_exclusive_suicide_unigrams.items(), begin_unigrams, cutoff_unigrams)
	top_suicide_exclusive_bigrams = top_ngrams_list_maker(fdist_exclusive_suicide_bigrams.items(), begin_bigrams, cutoff_bigrams)
	top_suicide_exclusive_trigrams = top_ngrams_list_maker(fdist_exclusive_suicide_trigrams.items(), begin_trigrams, cutoff_trigrams)
	top_suicide_exclusive_four_grams = top_ngrams_list_maker(fdist_exclusive_suicide_four_grams.items(), begin_four_grams, cutoff_four_grams)
	top_suicide_exclusive_five_grams = top_ngrams_list_maker(fdist_exclusive_suicide_five_grams.items(), begin_five_grams, cutoff_five_grams)
	top_suicide_exclusive_six_grams = top_ngrams_list_maker(fdist_exclusive_suicide_six_grams.items(), begin_six_grams, cutoff_six_grams)
	top_nonsuicide_exclusive_unigrams = top_ngrams_list_maker(fdist_exclusive_nonsuicide_unigrams.items(), begin_unigrams, cutoff_unigrams)
	top_nonsuicide_exclusive_bigrams = top_ngrams_list_maker(fdist_exclusive_nonsuicide_bigrams.items(), begin_bigrams, cutoff_bigrams)
	top_nonsuicide_exclusive_trigrams = top_ngrams_list_maker(fdist_exclusive_nonsuicide_trigrams.items(), begin_trigrams, cutoff_trigrams)
	top_nonsuicide_exclusive_four_grams = top_ngrams_list_maker(fdist_exclusive_nonsuicide_four_grams.items(), begin_four_grams, cutoff_four_grams)
	top_nonsuicide_exclusive_five_grams = top_ngrams_list_maker(fdist_exclusive_nonsuicide_five_grams.items(), begin_five_grams, cutoff_five_grams)
	top_nonsuicide_exclusive_six_grams = top_ngrams_list_maker(fdist_exclusive_nonsuicide_six_grams.items(), begin_six_grams, cutoff_six_grams)
	
	# Prints header line, including "file" for first column and then
	# name of feature for each succeeding column.
	print('file', end="\t")
	print('% suicide 1-grams', end="\t")
	print('% suicide 2-grams', end="\t")
	print('% suicide 3-grams', end="\t")
	print('% suicide 4-grams', end="\t")
	print('% suicide 5-grams', end="\t")
	print('% suicide 6-grams', end="\t")
	print('% non-suicide 1-grams', end="\t")
	print('% non-suicide 2-grams', end="\t")
	print('% non-suicide 3-grams', end="\t")
	print('% non-suicide 4-grams', end="\t")
	print('% non-suicide 5-grams', end="\t")
	print('% non-suicide 6-grams', end="\t")
	print('suicide 1-grams', end="\t")
	print('suicide 2-grams', end="\t")
	print('suicide 3-grams', end="\t")
	print('suicide 4-grams', end="\t")
	print('suicide 5-grams', end="\t")
	print('suicide 6-grams', end="\t")
	print('non-suicide 1-grams', end="\t")
	print('non-suicide 2-grams', end="\t")
	print('non-suicide 3-grams', end="\t")
	print('non-suicide 4-grams', end="\t")
	print('non-suicide 5-grams', end="\t")
	print('non-suicide 6-grams', end="")
	print('')
	
	# For each song in the songs directory, print the file's name and then each
	# feature value
	for song_file in songs_files:
		
		# Create n-gram profiles for song
		file_unigram_profile = unigram_list(songs_dirpath + song_file)
		file_bigram_profile = bigram_list(songs_dirpath + song_file)
		file_trigram_profile = trigram_list(songs_dirpath + song_file)
		file_four_gram_profile = four_gram_list(songs_dirpath + song_file)
		file_five_gram_profile = five_gram_list(songs_dirpath + song_file)
		file_six_gram_profile = six_gram_list(songs_dirpath + song_file)
		
		# Number of n-grams in file
		total_unigrams = len(file_unigram_profile)
		total_bigrams = len(file_bigram_profile)
		total_trigrams = len(file_trigram_profile)
		total_four_grams = len(file_four_gram_profile)
		total_five_grams = len(file_five_gram_profile)
		total_six_grams = len(file_six_gram_profile)
		
		# Store lists of the n-grams in the file that are also in the
		# exclusive profiles
		file_unigrams_in_suicide_exclusive = []
		file_bigrams_in_suicide_exclusive = []
		file_trigrams_in_suicide_exclusive = []
		file_four_grams_in_suicide_exclusive = []
		file_five_grams_in_suicide_exclusive = []
		file_six_grams_in_suicide_exclusive = []
		file_unigrams_in_nonsuicide_exclusive = []
		file_bigrams_in_nonsuicide_exclusive = []
		file_trigrams_in_nonsuicide_exclusive = []
		file_four_grams_in_nonsuicide_exclusive = []
		file_five_grams_in_nonsuicide_exclusive = []
		file_six_grams_in_nonsuicide_exclusive = []
		
		# Populate file n-gram exclusive profiles
		for unigram in file_unigram_profile:
			if unigram in top_suicide_exclusive_unigrams:
				file_unigrams_in_suicide_exclusive.append(unigram)
			elif unigram in top_nonsuicide_exclusive_unigrams:
				file_unigrams_in_nonsuicide_exclusive.append(unigram)
		
		for bigram in file_bigram_profile:
			if bigram in top_suicide_exclusive_bigrams:
				file_bigrams_in_suicide_exclusive.append(bigram)
			elif bigram in top_nonsuicide_exclusive_bigrams:
				file_bigrams_in_nonsuicide_exclusive.append(bigram)
		
		for trigram in file_trigram_profile:
			if trigram in top_suicide_exclusive_trigrams:
				file_trigrams_in_suicide_exclusive.append(trigram)
			elif trigram in top_nonsuicide_exclusive_trigrams:
				file_trigrams_in_nonsuicide_exclusive.append(trigram)
		
		for four_gram in file_four_gram_profile:
			if four_gram in top_suicide_exclusive_four_grams:
				file_four_grams_in_suicide_exclusive.append(four_gram)
			elif four_gram in top_nonsuicide_exclusive_four_grams:
				file_four_grams_in_nonsuicide_exclusive.append(four_gram)
		
		for five_gram in file_five_gram_profile:
			if five_gram in top_suicide_exclusive_five_grams:
				file_five_grams_in_suicide_exclusive.append(five_gram)
			elif five_gram in top_nonsuicide_exclusive_five_grams:
				file_five_grams_in_nonsuicide_exclusive.append(five_gram)
		
		for six_gram in file_six_gram_profile:
			if six_gram in top_suicide_exclusive_six_grams:
				file_six_grams_in_suicide_exclusive.append(six_gram)
			elif six_gram in top_nonsuicide_exclusive_six_grams:
				file_six_grams_in_nonsuicide_exclusive.append(six_gram)
		
		# Counts of the number of n-grams in the file that are also in the
		# exclusive profiles
		total_unigrams_in_suicide_exclusive = len(file_unigrams_in_suicide_exclusive)
		total_bigrams_in_suicide_exclusive = len(file_bigrams_in_suicide_exclusive)
		total_trigrams_in_suicide_exclusive = len(file_trigrams_in_suicide_exclusive)
		total_four_grams_in_suicide_exclusive = len(file_four_grams_in_suicide_exclusive)
		total_five_grams_in_suicide_exclusive = len(file_five_grams_in_suicide_exclusive)
		total_six_grams_in_suicide_exclusive = len(file_six_grams_in_suicide_exclusive)
		total_unigrams_in_nonsuicide_exclusive = len(file_unigrams_in_nonsuicide_exclusive)
		total_bigrams_in_nonsuicide_exclusive = len(file_bigrams_in_nonsuicide_exclusive)
		total_trigrams_in_nonsuicide_exclusive = len(file_trigrams_in_nonsuicide_exclusive)
		total_four_grams_in_nonsuicide_exclusive = len(file_four_grams_in_nonsuicide_exclusive)
		total_five_grams_in_nonsuicide_exclusive = len(file_five_grams_in_nonsuicide_exclusive)
		total_six_grams_in_nonsuicide_exclusive = len(file_six_grams_in_nonsuicide_exclusive)
		
		# Feature values: (total n-grams in exclusive profiles)/(total n-grams)
		ratio_suicide_exclusive_unigrams = float(total_unigrams_in_suicide_exclusive)/float(total_unigrams)
		ratio_suicide_exclusive_bigrams = float(total_bigrams_in_suicide_exclusive)/float(total_bigrams)
		ratio_suicide_exclusive_trigrams = float(total_trigrams_in_suicide_exclusive)/float(total_trigrams)
		ratio_suicide_exclusive_four_grams = float(total_four_grams_in_suicide_exclusive)/float(total_four_grams)
		ratio_suicide_exclusive_five_grams = float(total_five_grams_in_suicide_exclusive)/float(total_five_grams)
		ratio_suicide_exclusive_six_grams = float(total_six_grams_in_suicide_exclusive)/float(total_six_grams)
		ratio_nonsuicide_exclusive_unigrams = float(total_unigrams_in_nonsuicide_exclusive)/float(total_unigrams)
		ratio_nonsuicide_exclusive_bigrams = float(total_bigrams_in_nonsuicide_exclusive)/float(total_bigrams)
		ratio_nonsuicide_exclusive_trigrams = float(total_trigrams_in_nonsuicide_exclusive)/float(total_trigrams)
		ratio_nonsuicide_exclusive_four_grams = float(total_four_grams_in_nonsuicide_exclusive)/float(total_four_grams)
		ratio_nonsuicide_exclusive_five_grams = float(total_five_grams_in_nonsuicide_exclusive)/float(total_five_grams)
		ratio_nonsuicide_exclusive_six_grams = float(total_six_grams_in_nonsuicide_exclusive)/float(total_six_grams)
		
		print(song_file, end="\t")
		print(ratio_suicide_exclusive_unigrams, end="\t")
		print(ratio_suicide_exclusive_bigrams, end="\t")
		print(ratio_suicide_exclusive_trigrams, end="\t")
		print(ratio_suicide_exclusive_four_grams, end="\t")
		print(ratio_suicide_exclusive_five_grams, end="\t")
		print(ratio_suicide_exclusive_six_grams, end="\t")
		print(ratio_nonsuicide_exclusive_unigrams, end="\t")
		print(ratio_nonsuicide_exclusive_bigrams, end="\t")
		print(ratio_nonsuicide_exclusive_trigrams, end="\t")
		print(ratio_nonsuicide_exclusive_four_grams, end="\t")
		print(ratio_nonsuicide_exclusive_five_grams, end="\t")
		print(ratio_nonsuicide_exclusive_six_grams, end="\t")
		print(total_unigrams_in_suicide_exclusive, end="\t")
		print(total_bigrams_in_suicide_exclusive, end="\t")
		print(total_trigrams_in_suicide_exclusive, end="\t")
		print(total_four_grams_in_suicide_exclusive, end="\t")
		print(total_five_grams_in_suicide_exclusive, end="\t")
		print(total_six_grams_in_suicide_exclusive, end="\t")
		print(total_unigrams_in_nonsuicide_exclusive, end="\t")
		print(total_bigrams_in_nonsuicide_exclusive, end="\t")
		print(total_trigrams_in_nonsuicide_exclusive, end="\t")
		print(total_four_grams_in_nonsuicide_exclusive, end="\t")
		print(total_five_grams_in_nonsuicide_exclusive, end="\t")
		print(total_six_grams_in_nonsuicide_exclusive, end="")
		print('')


if __name__ == '__main__':
	main()