%% Based on canonical data version 2.7.0
%% https://github.com/exercism/problem-specifications/raw/master/exercises/isbn-verifier/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(isbn_verifier_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_valid_isbn_number_test'() ->
    ?assert(isbn_verifier:is_valid("3-598-21508-8")).

'2_invalid_isbn_check_digit_test'() ->
    ?assertNot(isbn_verifier:is_valid("3-598-21508-9")).

'3_valid_isbn_number_with_a_check_digit_of_10_test'() ->
    ?assert(isbn_verifier:is_valid("3-598-21507-X")).

'4_check_digit_is_a_character_other_than_x_test'() ->
    ?assertNot(isbn_verifier:is_valid("3-598-21507-A")).

'5_invalid_character_in_isbn_test'() ->
    ?assertNot(isbn_verifier:is_valid("3-598-P1581-X")).

'6_x_is_only_valid_as_a_check_digit_test'() ->
    ?assertNot(isbn_verifier:is_valid("3-598-2X507-9")).

'7_valid_isbn_without_separating_dashes_test'() ->
    ?assert(isbn_verifier:is_valid("3598215088")).

'8_isbn_without_separating_dashes_and_x_as_check_digit_test'() ->
    ?assert(isbn_verifier:is_valid("359821507X")).

'9_isbn_without_check_digit_and_dashes_test'() ->
    ?assertNot(isbn_verifier:is_valid("359821507")).

'10_too_long_isbn_and_no_dashes_test'() ->
    ?assertNot(isbn_verifier:is_valid("3598215078X")).

'11_too_short_isbn_test'() ->
    ?assertNot(isbn_verifier:is_valid("00")).

'12_isbn_without_check_digit_test'() ->
    ?assertNot(isbn_verifier:is_valid("3-598-21507")).

'13_check_digit_of_x_should_not_be_used_for_0_test'() ->
    ?assertNot(isbn_verifier:is_valid("3-598-21515-X")).

'14_empty_isbn_test'() ->
    ?assertNot(isbn_verifier:is_valid([])).

'15_input_is_9_characters_test'() ->
    ?assertNot(isbn_verifier:is_valid("134456729")).

'16_invalid_characters_are_not_ignored_test'() ->
    ?assertNot(isbn_verifier:is_valid("3132P34035")).

'17_input_is_too_long_but_contains_a_valid_isbn_test'() ->
    ?assertNot(isbn_verifier:is_valid("98245726788")).
