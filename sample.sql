# c:\xampp\mysql\bin\mysql -uedunova -pedunova < c:\Users\Korisnik\Desktop\Java\Scripts\sample.sql

drop database if exists sampledatabase;
create database sampledatabase;

use sampledatabase;

create table assign(
    id bigint(10),
    course bigint(10),
    name varchar(255),
    intro longtext,
    introformat smallint(4),
    alwaysshowdescription tinyint(2),
    nosubmissions tinyint(2),
    sendnotifications tinyint(2),
    sendlatenotifications tinyint(2),
    duedate bigint(10),
    allowsubmissionsfromdate bigint(10),
    grade bigint(10),
    timemodified bigint(10),
    requiresubmissionstatement tinyint(2),
    sompletionsubmit tinyint(2),
    sutoffdate bigint(10),
    teamsubmission tinyint(2),
    requireallteammemberssubmit tinyint(2),
    teamsubmissionongroupid bigint(10),
    blindmarking tinyint(2),
    revealidentities tinyint(2),
    attemptreopenmethod varchar(10),
    maxattempts mediumint(6),
    markingworkflow tinyint(2),
    markingallocation tinyint(2),
    sendstudentnotifications tinyint(2)
);

create table assign_plugin_config(
    id bigint(10),
    assignment bigint(10),
    plugin varchar(28),
    subtype varchar(28),
    name varchar(28),
    value longtext
);

create table assignsubmission_file(
    id bigint(10),
    assignment bigint(10),
    submission bigint(10),
    numfiles bigint(10)
);

create table assignsubmission(
    id bigint(10),
    assignment bigint(10),
    userid bigint(10),
    timecreated bigint(10),
    timemodified bigint(10),
    status varchar(10),
    groupid bigint(10),
    attemptnumber bigint(10)
);

create table assignsubmission_onlinetext(
    id bigint(10),
    assignment bigint(10),
    submission bigint(10),
    onlinetext longtext,
    onlineformat smallint(4)
);

create table assign_user_flags(
    id bigint(10),
    userid bigint(10),
    assignment bigint(10),
    locked bigint(10),
    mailed smallint(4),
    extensionduedate bigint(10),
    workflowstate varchar(20),
    allocatedmarker bigint(10)
);

create table assignfeedback_file(
    id bigint(10),
    grade bigint(10),
    numfiles bigint(10)
);

create table assignfeedback_editpdf_quick(
    id bigint(10),
    userid bigint(10),
    rawtext longtext,
    width bigint(10),
    colour varchar(10)
);

create table assignfeedback_editpdf_cmnt(
    id bigint(10),
    gradeid bigint(10),
    x bigint(10),
    y bigint(10),
    width bigint(10),
    rawtext longtext,
    pageno bigint(10),
    colour varchar(10),
    draft tinyint(2)
);

create table assign_grades(
    id bigint(10),
    assignment bigint(10),
    userid bigint(10),
    timecreated bigint(10),
    timemodified bigint(10),
    grader bigint(10),
    grade decimal(10,5),
    attemptnumber bigint(10)
);

create table assign_user_mapping(
    id bigint(10),
    assignment bigint(10),
    userid bigint(10)
);

create table assignfeedback_editpdf_annot(
    id bigint(10),
    gradeid bigint(10),
    pageno bigint(10),
    x bigint(10),
    y bigint(10),
    endx bigint(10),
    endy bigint(10),
    path longtext,
    type varchar(10),
    colour varchar(10),
    draft tinyint(2) 
);

create table assignfeedback_comments(
    id bigint(10),
    assignment bigint(10),
    grade bigint(10),
    commenttext longtext,
    commentformat smallint(4)
);