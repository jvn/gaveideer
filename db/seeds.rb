# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'forgery'

@bruger1 = Bruger.create(:navn => Forgery(:name).first_name,
                         :efternavn => Forgery(:name).last_name)
@bruger2 = Bruger.create(:navn => Forgery(:name).first_name,
                         :efternavn => Forgery(:name).last_name)
@bruger3 = Bruger.create(:navn => Forgery(:name).first_name,
                         :efternavn => Forgery(:name).last_name)

@begivenhed1 = Begivenhed.create(:begivenhed => 'min foedselsdag',
                                 :dato => 'd.01/01/2012',
                                 :bruger => @bruger1)
@begivenhed2 = Begivenhed.create(:begivenhed => 'min foedselsdag',
                                 :dato => 'd.01/01/2012',
                                 :bruger => @bruger1)
@begivenhed3 = Begivenhed.create(:begivenhed => 'min foedselsdag',
                                 :dato => 'd.01/01/2012',
                                 :bruger => @bruger1)
@begivenhed4 = Begivenhed.create(:begivenhed => 'min foedselsdag',
                                 :dato => 'd.01/01/2012',
                                 :bruger => @bruger2)
@begivenhed5 = Begivenhed.create(:begivenhed => 'min foedselsdag',
                                 :dato => 'd.01/01/2012',
                                 :bruger => @bruger2)
@begivenhed6 = Begivenhed.create(:begivenhed => 'min foedselsdag',
                                 :dato => 'd.01/01/2012',
                                 :bruger => @bruger3)
@begivenhed7 = Begivenhed.create(:begivenhed => 'min foedselsdag',
                                 :dato => 'd.01/01/2012',
                                 :bruger => @bruger3)

Onske.create(:onske => 'ps3',
             :pris => 10.00,
             :begivenhed => @begivenhed1)
Onske.create(:onske => 'klaver',
             :pris => 10.00,
             :begivenhed => @begivenhed1)
Onske.create(:onske => 'hundehvalp',
             :pris => 10.00,
             :begivenhed => @begivenhed1)
Onske.create(:onske => 'ps3',
             :pris => 10.00,
             :begivenhed => @begivenhed2)
Onske.create(:onske => 'klaver',
             :pris => 10.00,
             :begivenhed => @begivenhed2)
Onske.create(:onske => 'hundehvalp',
             :pris => 10.00,
             :begivenhed => @begivenhed2)
Onske.create(:onske => 'ps3',
             :pris => 10.00,
             :begivenhed => @begivenhed3)
Onske.create(:onske => 'klaver',
             :pris => 10.00,
             :begivenhed => @begivenhed3)
Onske.create(:onske => 'hundehvalp',
             :pris => 10.00,
             :begivenhed => @begivenhed3)
Onske.create(:onske => 'ps3',
             :pris => 10.00,
             :begivenhed => @begivenhed4)
Onske.create(:onske => 'klaver',
             :pris => 10.00,
             :begivenhed => @begivenhed4)
Onske.create(:onske => 'hundehvalp',
             :pris => 10.00,
             :begivenhed => @begivenhed4)
Onske.create(:onske => 'ps3',
             :pris => 10.00,
             :begivenhed => @begivenhed5)
Onske.create(:onske => 'klaver',
             :pris => 10.00,
             :begivenhed => @begivenhed5)
Onske.create(:onske => 'hundehvalp',
             :pris => 10.00,
             :begivenhed => @begivenhed5)
Onske.create(:onske => 'ps3',
             :pris => 10.00,
             :begivenhed => @begivenhed6)
Onske.create(:onske => 'klaver',
             :pris => 10.00,
             :begivenhed => @begivenhed6)
Onske.create(:onske => 'hundehvalp',
             :pris => 10.00,
             :begivenhed => @begivenhed6)
Onske.create(:onske => 'ps3',
             :pris => 10.00,
             :begivenhed => @begivenhed7)
Onske.create(:onske => 'klaver',
             :pris => 10.00,
             :begivenhed => @begivenhed7)
Onske.create(:onske => 'hundehvalp',
             :pris => 10.00,
             :begivenhed => @begivenhed7)

