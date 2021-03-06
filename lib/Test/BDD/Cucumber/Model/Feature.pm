package Test::BDD::Cucumber::Model::Feature;

use Moose;

=head1 NAME

Test::BDD::Cucumber::Model::Document - Model to represent a feature file, parsed

=head1 DESCRIPTION

Model to represent a feature file, parsed

=head1 ATTRIBUTES

=head2 name

The text after the C<Feature:> keyword

=cut

has 'name'         => ( is => 'rw', isa => 'Str' );

=head2 name_line

A L<Test::BDD::Cucumber::Model::Line> object corresponding to the line the
C<Feature> keyword was found on

=cut

has 'name_line'    => ( is => 'rw', isa => 'Test::BDD::Cucumber::Model::Line' );

=head2 satisfaction

An arrayref of strings of the Conditions of Satisfaction

=cut

has 'satisfaction' => ( is => 'rw', isa => 'ArrayRef[Test::BDD::Cucumber::Model::Line]',
	default => sub {[]});

=head2 document

The corresponding L<Test::BDD::Cucumber::Model::Document> object

=cut

has 'document'   => ( is => 'rw', isa => 'Test::BDD::Cucumber::Model::Document' );

=head2 scenarios

An arrayref of the L<Test::BDD::Cucumber::Model::Scenario> objects that
constitute the test.

=cut

has 'scenarios'  => ( is => 'rw', isa => 'ArrayRef[Test::BDD::Cucumber::Model::Scenario]',
	default => sub {[]} );

=head1 AUTHOR

Peter Sergeant C<pete@clueball.com>

=head1 LICENSE

Copyright 2011, Peter Sergeant; Licensed under the same terms as Perl

=cut

1;