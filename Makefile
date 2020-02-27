setup:
	bundle

run:
	ruby celsius_vs_fahrenheit.rb

tests:
	ruby test/*

tests-watch:
	bundle exec guard
