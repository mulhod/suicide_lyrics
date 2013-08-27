#!/usr/bin/python -tt
from __future__ import print_function
import nltk

# Given a file, returns a list of that file's words.
def list_maker(filename):
	f = open(filename, 'rU')
	words = f.read() # Reads in the whole file as a string
	words = words.lower() # Converts string's contents to lower-case,
		# just in case it's necessary.
	word_list = nltk.word_tokenize(words) # Tokenizes all the words
		# and saves the tokens in a list
	f.close()
	return word_list


# Given a word-list, returns a list of POS-tags, one for each token in the
# word-list.
def tagger(word_list):
	pos_tag_list = []
	for item in nltk.pos_tag(word_list):
		pos_tag_list.append(item[1])
	return pos_tag_list


# Given a POS (consisting of a list of tags) and a list of all of the token
# tags in a text, return a total count for that particular POS.
def pos_counter(pos, token_tags):
	count = 0
	for tag in pos:
		for token_tag in token_tags:
			if tag == token_tag:
				count += 1
	return count


from os import listdir
from os.path import isfile, join
# Given a directory, returns a list of all the file-names (not including
# the path).
# Usage example: file_list('/home/mulhollandm2/test/')
def file_list(dir):
	files = [ f for f in listdir(dir) if isfile(join(dir,f)) ]
	return files


import sys
def main():
	if len(sys.argv) != 3:
		print(r'usage: python(2.6) count_pos.py /path/to/tokenized/song/files/dir/ /path/to/resulting/pos-counts.csv')
			# The second argument is not only the path to the
			# file that will be created, but also the
			# file-name.
		sys.exit(1)
	
	# Save the song-files dir path and create a list of the files in
	# the dir.
	song_file_dir = sys.argv[1] # dir for input files (should be the
		# tokenized versions of the files, but it could just as
		# well be the raw versions.
	song_files = file_list(song_file_dir)
	
	# Save the full pathname of the file that will be created and
	# then open a file with that name.
	pos_counts_file_full_pathname = sys.argv[2]
	pos_counts_file = open(pos_counts_file_full_pathname, 'wa')
	
	# Tag-lists for groups of tags
	verb = ['MD', 'VB', 'VBD', 'VBG', 'VBN', 'VBP', 'VBZ']
		# MD = modal auxiliary
		# VB = verb, base form
		# VBD = verb, past tense
		# VBG = verb, present participle or gerund
		# VBN = verb, past participle
		# VBP = verb, present tense, not 3rd person singular
		# VBZ = verb, present tense, 3rd person singular
	adj = ['JJ', 'JJR', 'JJS']
		# JJ = adjective or numeral, ordinal
		# JJR = adjective, comparative
		# JJS = adjective, superlative
	noun = ['NN', 'NNP', 'NNPS', 'NNS']
		# NN = noun, coomon, singular or mass
		# NNP = noun, proper, singular
		# NNPS = noun, proper, plural
		# NNS = noun, common, plural
	pronoun = ['PRP', 'PRP$', 'WP', 'WP$']
		# PRP = pronoun, personal
		# PRP$ = pronoun, possessive
		# WP = WH-pronoun
		# WP$ = WH-pronoun, possessive
	adv = ['RB', 'RBR', 'RBS', 'WRB']
		# RB = adverb
		# RBR = adverb, comparative
		# RBS = adverb, superlative
		# WRB = WH-adverb
	adv_particle = ['RP']
	conj_coord = ['CC']
	prep_or_conj_subord = ['IN']
	numeral = ['CD']
	det = ['DT', 'WDT']
		# DT = determiner
		# WDT = WH-determiner
	there_existential = ['EX']
	interj = ['UH']
	
	# Write the header line of the pos_counts_file
	pos_counts_file.write("file\t"
		+ "verb\t"
		+ "verb/token\t"
		+ "adj\t"
		+ "adj/token\t"
		+ "noun\t"
		+ "noun/token\t"
		+ "pronoun\t"
		+ "pronoun/token\t"
		+ "adv\t"
		+ "adv/token\t"
		+ "adv_particle\t"
		+ "adv_particle/token\t"
		+ "conj_coord\t"
		+ "conj_coord/token\t"
		+ "prep_or_conj_subord\t"
		+ "prep_or_conj_subord/token\t"
		+ "numeral\t"
		+ "numeral/token\t"
		+ "det\t"
		+ "det/token\t"
		+ "there_existential\t"
		+ "there_existential/token\t"
		+ "interj\t"
		+ "interj/token\t"
		+ "verb/(adj+.01)\t"
		+ "verb/(adv+.01)\t"
		+ "verb/(noun+.01)\t"
		+ "verb/(pronoun+.01)\t"
		+ "adj/(noun+.01)\t"
		+ "adj/(pronoun+.01)\t"
		+ "adj/(adv+.01)\t"
		+ "noun/(pronoun+.01)\t"
		+ "noun/(adv+.01)\t"
		+ "adv/(pronoun+.01)\t"
		+ "conj_coord/(prep_or_conj_subord+.01)\t\n")
	
	for file in song_files:
		
		# Make a list of the words in the file and then create
		# a list of the POS-tags in the file, one for each
		# token in the file.
		word_list = list_maker(song_file_dir + file)
		pos_tag_list = tagger(word_list)
		
		# Stores the number of tokens in the file.
		tokens = len(word_list)
		
		# Variables to store the counts of the different
		# POS-tags
		verb_count = pos_counter(verb, pos_tag_list)
		adj_count = pos_counter(adj, pos_tag_list)
		noun_count = pos_counter(noun, pos_tag_list)
		pronoun_count = pos_counter(pronoun, pos_tag_list)
		adv_count = pos_counter(adv, pos_tag_list)
		adv_particle_count = pos_counter(adv_particle, pos_tag_list)
		conj_coord_count = pos_counter(conj_coord, pos_tag_list)
		prep_or_conj_subord_count = pos_counter(prep_or_conj_subord, pos_tag_list)
		numeral_count = pos_counter(numeral, pos_tag_list)
		det_count = pos_counter(det, pos_tag_list)
		there_existential_count = pos_counter(there_existential, pos_tag_list)
		interj_count = pos_counter(interj, pos_tag_list)
		
		# Variables to store various ratios between the counts
		# 0.01 is added to the denominator in order to curb
		# undefined values.
		verb_to_adj_ratio = float(verb_count)/(float(adj_count) + 0.01)
		verb_to_adv_ratio = float(verb_count)/(float(adv_count) + 0.01)
		verb_to_noun_ratio = float(verb_count)/(float(noun_count) + 0.01)
		verb_to_pronoun_ratio = float(verb_count)/(float(pronoun_count) + 0.01)
		adj_to_noun_ratio = float(adj_count)/(float(noun_count) + 0.01)
		adj_to_pronoun_ratio = float(adj_count)/(float(pronoun_count) + 0.01)
		adj_to_adv_ratio = float(adj_count)/(float(adv_count) + 0.01)
		noun_to_pronoun_ratio = float(noun_count)/(float(pronoun_count) + 0.01)
		noun_to_adv_ratio = float(noun_count)/(float(adv_count) + 0.01)
		adv_to_pronoun_ratio = float(adv_count)/(float(pronoun_count) + 0.01)
		conj_coord_to_prep_or_conj_subord_ratio = float(conj_coord_count)/(float(prep_or_conj_subord_count) + 0.01)
		
		# Print a new line in the pos_counts_file.csv
		# spreadsheet for this song
		pos_counts_file.write(file + "\t")
		pos_counts_file.write(str(verb_count) + "\t")
		pos_counts_file.write(str(float(verb_count)/float(tokens)) + "\t")
		pos_counts_file.write(str(adj_count) + "\t")
		pos_counts_file.write(str(float(adj_count)/float(tokens)) + "\t")
		pos_counts_file.write(str(noun_count) + "\t")
		pos_counts_file.write(str(float(noun_count)/float(tokens)) + "\t")
		pos_counts_file.write(str(pronoun_count) + "\t")
		pos_counts_file.write(str(float(pronoun_count)/float(tokens)) + "\t")
		pos_counts_file.write(str(adv_count) + "\t")
		pos_counts_file.write(str(float(adv_count)/float(tokens)) + "\t")
		pos_counts_file.write(str(adv_particle_count) + "\t")
		pos_counts_file.write(str(float(adv_particle_count)/float(tokens)) + "\t")
		pos_counts_file.write(str(conj_coord_count) + "\t")
		pos_counts_file.write(str(float(conj_coord_count)/float(tokens)) + "\t")
		pos_counts_file.write(str(prep_or_conj_subord_count) + "\t")
		pos_counts_file.write(str(float(prep_or_conj_subord_count)/float(tokens)) + "\t")
		pos_counts_file.write(str(numeral_count) + "\t")
		pos_counts_file.write(str(float(numeral_count)/float(tokens)) + "\t")
		pos_counts_file.write(str(det_count) + "\t")
		pos_counts_file.write(str(float(det_count)/float(tokens)) + "\t")
		pos_counts_file.write(str(there_existential_count) + "\t")
		pos_counts_file.write(str(float(there_existential_count)/float(tokens)) + "\t")
		pos_counts_file.write(str(interj_count) + "\t")
		pos_counts_file.write(str(float(interj_count)/float(tokens)) + "\t")
		pos_counts_file.write(str(verb_to_adj_ratio) + "\t")
		pos_counts_file.write(str(verb_to_adv_ratio) + "\t")
		pos_counts_file.write(str(verb_to_noun_ratio) + "\t")
		pos_counts_file.write(str(verb_to_pronoun_ratio) + "\t")
		pos_counts_file.write(str(adj_to_noun_ratio) + "\t")
		pos_counts_file.write(str(adj_to_pronoun_ratio) + "\t")
		pos_counts_file.write(str(adj_to_adv_ratio) + "\t")
		pos_counts_file.write(str(noun_to_pronoun_ratio) + "\t")
		pos_counts_file.write(str(noun_to_adv_ratio) + "\t")
		pos_counts_file.write(str(adv_to_pronoun_ratio) + "\t")
		pos_counts_file.write(str(conj_coord_to_prep_or_conj_subord_ratio) + "\t\n")
		
	pos_counts_file.close()
	
if __name__ == '__main__':
	main()