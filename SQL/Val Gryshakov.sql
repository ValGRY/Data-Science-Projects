'''
Q1: Some of the facilities charge a fee to members, but some do not. 
Write a SQL query to produce a list of the names of the facilities that do
'''

select name
from Facilities
where membercost > 0


'''
Q2: How many facilities do not charge a fee to members?
'''
select count( name ) 
from Facilities
where membercost = 0 ;



'''
Q3: Write an SQL query to show a list of facilities that charge a fee to members,
where the fee is less than 20% of the facility"s monthly maintenance cost.
Return the facid, facility name, member cost, and monthly maintenance of the
facilities in question.
'''
select facid, name, membercost, monthlymaintenance
from Facilities
where membercost > 0
and membercost / monthlymaintenance * 100 / monthlymaintenance * 20 ;



'''
Q4: Write an SQL query to retrieve the details of facilities with ID 1 and 5.
Try writing the query without using the OR operator.
'''
SELECT * 
FROM Facilities
WHERE facid IN (1, 5) ;



'''
Q5: Produce a list of facilities, with each labelled as
"cheap" or "expensive", depending on if their monthly maintenance cost is
more than $100. Return the name and monthly maintenance of the facilities
in question.
'''
select name, monthlymaintenance, 
case when monthlymaintenance > 100 then 'expensive'
     else 'cheap' END as label
from Facilities ;


'''
Q6: You"d like to get the first and last name of the last member(s)
who signed up. Try not to use the LIMIT clause for your solution.
'''
select firstname, surname, joindate
from Members
order by joindate desc ;


'''
Q7: Produce a list of all members who have used a tennis court.
Include in your output the name of the court, and the name of the member
formatted as a single column. Ensure no duplicate data, and order by
the member name.
'''
select distinct concat (surname," ", firstname) mane, Facilities.name
from Members
inner join Bookings on Members.memid = Bookings.memid
inner join Facilities on Bookings.facid = Facilities.facid
where Facilities.name like "%Tennis Court%"
order by surname desc


'''
Q8: Produce a list of bookings on the day of 2012-09-14 which
will cost the member (or guest) more than $30. Remember that guests have
different costs to members (the listed costs are per half-hour "slot"), and
the guest user"s ID is always 0. Include in your output the name of the
facility, the name of the member formatted as a single column, and the cost.
Order by descending cost, and do not use any subqueries.
'''
select concat (firstname, ' ', surname) member, name as Facility,
case when firstname = 'GUEST' 
then guestcost * slots 
else membercost * slots 
end as cost
from Members
inner join Bookings on Members.memid = Bookings.memid
inner join Facilities on Bookings.facid = Facilities.facid
where starttime >= '2012-09-14' and starttime < '2012-09-15'
and case when firstname = 'GUEST' 
then guestcost * slots 
else membercost * slots 
end > 30
order by cost desc;


'''
Q9: This time, produce the same result as in Q8, but using a subquery.
'''
select concat (mem.firstname, ' ', mem.surname) member,
       fcs.name AS facilty,
       case
           when mem.memid = 0 then
           bks.slots * fcs.guestcost
        else
           bks.slots * fcs.membercost
        end as cost
from Members mem
inner join Bookings bks
        on mem.memid = bks.memid
inner join Facilities fcs
        on bks.facid = fcs.facid
where bks.starttime >= '2012-09-14' and
        bks.starttime < '2012-09-15' and (
        (mem.memid=0 and bks.slots * fcs.guestcost>30) or
        (mem.memid!=0 and bks.slots * fcs.membercost>30))
order by cost desc;



'''
Q10: Produce a list of facilities with a total revenue less than 1000.
The output of facility name and total revenue, sorted by revenue. Remember
that theres a different cost for guests and members!
'''
select f.name, sum(case when b.memid = 0 then b.slots * f.guestcost
else b.slots * f.membercost end) as revenue
from Facilities as f
inner join Bookings as b on b.facid = f.facid
group by f.name
having revenue < 1000
order by revenue;


'''
Q11: Produce a report of members and who recommended them in alphabetic surname,firstname order
'''
select m.surname, m.firstname, m.recommendedby as recomender_id, r.surname as recomender_surname, r.firstname as recomender_firstname
from Members as m
left join Members as r on m.recommendedby = r.memid
where m.recommendedby != 0
order by r.surname, r.firstname;


'''
Q12: Find the facilities with their usage by member, but not guests
'''
select b.facid, count( b.memid ) as mem_usage, f.name
from (select facid, memid from Bookings where memid !=0) as b
left join Facilities as f on b.facid = f.facid
order by b.facid;



'''
Q13: Find the facilities usage by month, but not guests
'''
select b.months, count( b.memid ) as mem_usage
from (select MONTH( starttime ) as months, memid from Bookings where memid !=0) as b
order by b.months;