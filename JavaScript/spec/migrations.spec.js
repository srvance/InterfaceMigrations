'use strict';

describe('migrations', function () {

	var migrations;
	beforeEach(function () {
		migrations = require('../lib/migrations');
	});

	describe('Add a required parameter', function () {
		it('calls add with two arguments', function () {
			expect(migrations.add(2, 3)).toBe(5);
		});

		xit('calls add with three arguments', function () {
			expect(migrations.add(2, 3, 4)).toBe(9);
		});
	});

	describe('Remove a required parameter', function() {
		it('calls subtract with three arguments', function() {
			expect(migrations.subtract(17, 6, 2)).toBe(9);
		});

		xit('calls subtract with two arguments', function() {
			expect(migrations.subtract(17, 8)).toBe(9);
		});
	});
});
