#!/usr/bin/env python

import os, sys, errno

if os.path.dirname(__file__) != '.':
	print "This script must be run from the dotfiles directory."
	sys.exit(1)
script = os.path.basename(__file__)

def link_file(target, name):
	try:
		os.symlink(target, name)
		print "\033[36;1m" + name + "\033[0m ->", target
	except OSError as e:
		if e.errno == errno.EEXIST:
			try:
				if os.readlink(name) == target:
					print name, "is already linked"
				else:
					print name, "\033[31;1mexists\033[0m (symlink)"
			except OSError as e:
				if e.errno == errno.EINVAL:
					print name, "\033[31;1mexists\033[0m"
				else:
					raise
		else:
			raise

for f in os.listdir('.'):
	if f in [script, '.git']:
		continue

	name = '../.' + f
	target = 'dotfiles/' + f
	# ~.vim is a special case since we symlink the whole directory
	# everywhere else, we create the directory and symlink the contents
	if f == 'vim' or not os.path.isdir(f):
		link_file(target, name)
	else:
		try:
			os.mkdir(name)
			print "Created \033[34;1m" + name + "\033[0m"
		except OSError as e:
			if e.errno == errno.EEXIST:
				print 'No need to create', name
			else:
				raise
		for f in os.listdir(f):
			link_file('../' + target + '/' + f, name + '/' + f)
