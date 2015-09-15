<%@ Page Title="" Theme="Main" Language="C#" MasterPageFile="~/ToodleCourse.master" AutoEventWireup="true" CodeBehind="DatabaseFundamentals.aspx.cs" Inherits="Toodle.DatabaseFundamentals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="courseHeadMeta" runat="server">
    <title>MTA - Database Fundamentals Page</title>
    <meta name="description" content="Course work for Database Fundamentals" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="courseHeadLinks" runat="server">
    <link rel="stylesheet" href="fancyBox/source/jquery.fancybox.css" media="screen"/>
		<script type="text/javascript" src="App_Themes/Main/fancyBox/source/jquery.fancybox.pack.js"></script>
        <script src="App_Themes/Main/script.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="courseProgressBar" runat="server">

        

    <p style="height: 100px;"></p>
      <div class="col-md-12 text-center">
          <div class="progress">
          <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="70"
          aria-valuemin="0" aria-valuemax="100" style="width:65%">
           Database Fundamentals
          </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="placeholderTabOne" runat="server">
            <h2 style="text-align:center;">Content for Database Fundamentals</h2>
    <div id="tabbedMenu">
    <asp:Menu ID="nestedTabbedMenu" runat="server" Orientation="Vertical" OnMenuItemClick="nestedTabbedMenu_MenuItemClick">
        <Items>
            <asp:MenuItem Text="Understandign Core Concepts" Value="0" ></asp:MenuItem>
            <asp:MenuItem Text="Creating Database Objects" Value="1"></asp:MenuItem>
            <asp:MenuItem Text="Manipulating Data" Value="2"></asp:MenuItem>
            <asp:MenuItem Text="Understanding Data Storage" Value="3"></asp:MenuItem>
            <asp:MenuItem Text="Administering a Database" Value="4"></asp:MenuItem>
        </Items>
    </asp:Menu>
        </div>
    <div id="nestedMultiTabs">                                                                                    
        <asp:MultiView ID="mvTabs2" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <!----------------------------Section 1---------------------------------------------->
                <h3>Part 1: Understandign Core Database Concepts</h3>
                <p>What is covered in this section:</p>
                <ul>
                    <li>Understanding Database Concepts</li>
                    <li>Understanding Data Manipulation Language(DML)</li>
                    <li>Understanding Data Definition Language(DDL)</li>
                </ul>
                    <h4>Understanding Database Concepts</h4>
                    <p>What is a database? A database (db) is an organized collection of data, typically stored 
                        in electronic format. It allows you to input, organize, and retrieve data quickly. 
                        Traditional databases are organized by fields, records, and files.</p>
                    <p>There are three types of databases with which you should be familiar in order to make the 
                        appropriate choice when developing your own database tables:</p>
                    <ul>
                        <li>Flat-Type databases</li>
                        <li>Hierarchical databases</li>
                        <li>Relational databases</li>
                    </ul>
                    <h5>Flat-Type databases</h5>
                    <p>Flat-type databases are simplistic in design. They are most commonly used in plain-text formats. 
                        Because their purpose is to hold one record per line, they make access, perfor- mance, and queries 
                        very quick. An example of this type of database would be what you would find in a .txt or .ini file.</p>
                    <h5>Hierarchical databases</h5>
                    <p>A hierarchical database is similar to a tree structure (such as a family tree). In this database, each 
                        “parent” table can have multiple “children,” but each child can have only one parent.</p>
                    <h5>Relational databases</h5>
                    <p>The last yet most important database type is the relational database. A relational database is similar to a 
                        hierarchical database in that data is stored in tables and any new information is automatically added into 
                        the table without the need to reorganize the table itself. Unlike in hierarchical databases, however, a 
                        table in a relational database can have multiple parents.</p>
                    <h5>Understanding Relational Database Concepts</h5>
                    <p>A simple database with one table is similar to a spreadsheet that contains rows and columns.
                        However, unlike a spreadsheet, a database allows you to store thousands of rows of data and
                        then access that information more quickly than by reading a spreadsheet</p>
                    <p>Before you design your first relational database, you must understand the elements that
                        form this type of database and the terminology used to describe them.</p>
                    <p>Essential Details</p>
                    <ul>
                        <li>A <strong>fild</strong> is a location in a record in which a particular type of data is stored.</li>
                        <li>A <strong>column</strong> is an attribute for a row or record.</li>
                        <li>A <strong>row</strong> is a record within a table.</li>
                        <li>A <strong>table</strong> is a database object consisting of rows and columns.</li>
                        <li>A <strong>record</strong> is a data structure that is a collection of fields (elements), each with 
                            its own name and type that appear in a table as group of fields across one row.</li>
                    </ul>    
                    <p>Most modern database management systems implement a relational model in which the data is organized
                        in relations (tables). </p>
                    <ul>
                        <li>A <strong>one-to-one</strong> orelationship is an association between two tables in which the 
                            primary key value of each record in the primary table corresponds to the value in the matching 
                            field of one, and only one, record in the related table.</li>
                        <li>A <strong>many-to-many</strong> relationship is a complex association between two sets of 
                            parameters in which many parameters of each set can relate to many others in the second set.</li>
                        <li>A <strong>parent/child</strong> relationship is a relationship between nodes in a tree data 
                            structure in which the parent is one step closer to the root (that is, one level higher) 
                            than the child.</li>
                        <li><strong>Primary Keys</strong> are unique data identifiers.</li>
                    </ul>
                    <p><strong>Constraints</strong> are limitations or rules placed on a field or column to ensure that 
                        data that is considered invalid is not entered. For example, if a person’s age should be input, 
                        then the data that is entered must be a positive number—a person cannot have a negative age.</p>
                    <ul>
                        <li>Structured query language (<strong>SQL</strong>) is a relational database language used in 
                            querying, updating, and managing
                        relational databases and is the de facto standard for database products.</li>
                        <li>Data manipulation language (<strong>DML</strong>) is used to insert, update, and delete data and to query a database.</li>
                        <li>Data definition language (<strong>DDL</strong>) is used to create, modify, or drop relational databases, entities, attributes,
                        and other objects (e.g. views).</li>
                    </ul>
                    <h4>Understanding Data Manipulation Language(DML)</h4>
                    <p>Data Manipulation Language (DML) is the language element that allows you to use the
                        core statements INSERT, UPDATE, DELETE, and MERGE to manipulate data in any
                        SQL Server tables.  Core DML statements include the following:</p>
                    <ul>
                        <li><strong>SELECT:</strong> Retrieves rows from the database and enables the selection of one or many rows
                        or columns from one or many tables in SQL Server.</li>
                        <li><strong>INSERT:</strong> Adds one or more new rows to a table or a view in SQL Server.</li>
                        <li><strong>UPDATE:</strong> Changes existing data in one or more columns in a table or view.</li>
                        <li><strong>DELETE:</strong> Removes rows from a table or view.</li>
                        <li><strong>MERGE:</strong> Performs insert, update, or delete operations on a target table based on the
                        results of a join with a source table.</li>
                    </ul>
                    <h4>Understanding Data Definition Language(DDL)</h4>
                    <p>Data Definition Language (DDL) statements form part of the Transact-SQL portion of
                        THE BOTTOM LINE SQL Server and can be used to create database objects such as tables and views. A schema 
                        is a description of a database to a database management system (DBMS) in the language provided by the DBMS.</p>
                    <ul>
                        <li><strong>USE:</strong>  Changes the database context.</li>
                        <li><strong>CREATE:</strong> Creates a SQL Server database object (table, view, or stored procedure).</li>
                        <li><strong>ALTER:</strong> Changes an existing object.</li>
                        <li><strong>DROP:</strong> Removes an object from the database.</li>
                        <li><strong>TRUNCATE:</strong> Removes rows from a table and frees the space used by those rows.</li>
                        <li><strong>DELETE:</strong>  Remove rows from a table but does not free the space used by those rows
                        removed.</li>
                    </ul>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <!----------------------------Section 2---------------------------------------------->
                <h3>Part 2: Creating Database Objects</h3>
                  <p>What is covered in this section:</p>
                    <ul>
                        <li>Defining Data Types</li>
                        <li>Creating and using Tables</li>
                        <li>Creating Views</li>
                        <li>Creating Stored Procedures</li>
                    </ul>
                <h4>Defining Data Types</h4>
                    <p>A data type is an attribute that specifies the type of data an object can hold, as well as how
                        many bytes each data type takes up. For example, several data types handle only whole
                        numbers, which makes them good for counting or for identification. Other data types allow
                        decimal numbers and therefore come in handy when storing values dealing with money. Still
                        other data types are designed to store strings or multiple characters so that you can define
                        labels, descriptions, and comments. Last are other miscellaneous data types that can store
                        dates, times, binary numbers consisting of 0s and 1s, and pictures. As a general rule, if you
                        have two data types that are similar and differ only in how many bytes each uses, one of the
                        data types will have a larger range of values and/or offer increased precision.</p>
                    <p>Microsoft SQL Server includes a wide range of predefined data types called built-in data
                        types. Most of the databases you will create or use employ only these types of data. Microsoft SQL Server 2008’s built-in data types are organized into the following general
                        categories:</p>
                    <ul>
                        <li>Exact numbers</li>
                        <li>Approximate numbers</li>
                        <li>Date and time</li>
                        <li>Character strings</li>
                        <li>Unicode character strings</li>
                        <li>Binary strings</li>
                        <li>Other data types</li>
                        <li>CLR data types</li>
                        <li>Spatial data types</li>
                    </ul>
                    <p>Data types specify the possible range of values of the set, the operations that can be performed
                    on the values, and the way in which the values are stored in memory.</p>
                    <ul>
                        <li><strong>Integer</strong> data types store whole numbers.</li>
                        <li><strong>Floating-point</strong> data types store any real numbers.</li>
                        <li><strong>Character</strong> stores A-Z or 0-9—any digit or letter that math functions will not be applied to.</li>
                        <li><strong>Boolean</strong> stores 1 or 0, true or false.</li>
                    </ul>
                    <h4>Creating and Using Tables</h4>     
                        <p>The purpose of a table is to provide a structure for storing data within a relational database.
                            Without this structure, there is an increased probability of database failure. In Lesson 1, you
                            learned about the purposes of tables and how to create them. Let’s quickly review some of the
                            most important points to remember when creating a table in a nongraphical user interface.
                            As we do so, be sure to think about the purpose of a relational database in the hierarchy of
                            database administration.</p>       
                        <p>Creating tables within SSMS is simple because SSMS is an easy-to-use graphical interface.
                            But how can you create tables using ANSI SQL syntax? Quite simply, you will use the
                            create table statement to accomplish this task. An example of proper Transact-SQL
                            syntax for creating a table is as follows:</p>
                        <p>CREATE TABLE planets (name varchar(50), diameter varchar(50))
                            INSERT INTO planets (name, diameter) VALUES (‘earth’, 10000)</p>
                        <p>Note that if SQL Server didn’t support implicit conversion, the following syntax would be
                            needed:</P>
                        <p>CREATE TABLE planets (name varchar(50), diameter varchar(50))
                        INSERT INTO planets (name, diameter) VALUES (‘earth’, CAST (10000 as
                        varchar(50)))</p>
                    <h4>Creating Views</h4>      
                        <p>A view is simply a virtual table consisting of different columns from one or more tables.
                            Unlike a table, a view is stored in a database as a query object; therefore, a view is an object
                            that obtains its data from one or more tables. Views that are based on this definition are
                            referred to as underlying tables. Once you have defined a view, you can reference it as you
                            would any other table in a database.</p>         
                        <p>A view is meant to be a security mechanism; that is, a view ensures that users can retrieve and
                            modify only the data seen by them through their permissions, thus ensuring they cannot see
                            or access the remaining data in the underlying tables. A view is also a mechanism to simplify
                            query execution. Complex queries can be stored in the form of a view and data from the view
                            can then be mined using simple query statements.</p>
                        <p>Essential Details</p>
                            <ul>
                                <li>A <strong>view</strong> is a saved query that creates a virtual table from the result set of the query.</li>
                                <li>A <strong>query</strong> is a specific set of instructions for extracting/selecting particular data.</li>
                                <li>A <strong>graphical designer</strong> is an application, such as Microsoft Access, that is object-oriented and drag-and-drop
                                driven.</li>  
                                <li>Transact-SQL (<strong>T-SQL</strong>) is a sophisticated query language with additional features beyond
                                what is defined in the ANSI SQL.</li>              
                            </ul>         
                        <p>To create a view using Transact-SQL syntax, a simple convention is as follows:</p>
                        <p>CREATE VIEW vwCustomer</p>
                        <p>AS</p>
                        <p>SELECT CustomerId, Company Name, Phone</p>
                        <p> FROM Customers</p>
                    <h4>Creating Stored Procedures</h4>       
                        <p>A stored procedure is a previously written SQL statement that has been “stored” or saved
                            into a database. One way to save time when running the same query over and over again is
                            to create a stored procedure that you can then execute from within the database’s command
                            environment. An example of executing a stored procedure is as follows:</p>
                            <ul>
                                <li><strong>Functions</strong> are one-word commands that return a single value written in the command set of SQL.</li>
                                <li><strong>Aggregate functions</strong> return a single value, calculated from values in a column.</li>
                                <li><strong>Scalar functions</strong> return a single value, based on the input value of a single field.</li>  
                                <li><strong>User-defined functions</strong> are compact segments of user-written SQL code that can accept parameters and
                                return either a value or a table.</li>      
                                <li><strong>Stored procedures</strong> are precompiled groups of SQL statements saved to the database.</li>          
                            </ul>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <!----------------------------Section 3---------------------------------------------->
                <h3>Part 3: Manipulating Data</h3>
                  <p>What is covered in this section:</p>
                     <ul>
                        <li>Using Queries to Select Data</li>
                        <li>Using Queries to Insert Data</li>
                        <li>Updating Data and Databases</li>
                        <li>Deleting Data</li>
                    </ul>

                <h4>Using Queries to Select Data</h4>
                    <p>In this section, you’ll learn how to utilize the SELECT query to retrieve or extract data
                        from a table, how to retrieve or extract data using joins, and how to combine results using
                        UNION and INTERSECT.</p>

                     <ul>
                         <li><strong>SELECT</strong> is the most-used SQL command for selecting the data from the database.</li>
                         <li><strong>DISTINCT</strong> returns only distinct (unique) values.</li>
                         <li><strong>WHERE</strong> specifies which rows to retrieve.</li>  
                         <li><strong>ORDER BY</strong> specifies an order in which to return the rows.</li>      
                         <li><strong>Boolean</strong> logical operators</li>          
                         <li><strong>AND</strong> displays a record if both the first condition and the second condition are true.</li>
                         <li><strong>OR</strong> displays a record if either the first condition or the second conditions are true.</li>
                         <li><strong>Truth Tables</strong> show the relationships of the Boolean logical operators.</li>
                     </ul>

                        <p>SELECT id, name //columns</p>
                        <p>FROM sysobjects // tables</p>
                        <p>WHERE type = “jones” //conditions you wish to produce results from</p>

                        <h5>Combining Conditions</h5>
                        <p>SELECT first_name, last_name</p>
                        <p>FROM employees</p>
                        <p>WHERE department = ‘shipping’ AND gender = ‘F’ AND hired >=
                        ‘2000-JAN-01’</p>

                <h4>Using Queries to Insert Data</h4>
                        <p>In this section, you’ll develop an understanding of how data is inserted into a database and
                        THE BOTTOM LINE how you can use INSERT statements.</p>

                        <ul>
                            <li>The <strong>INSERT INTO</strong> statement is used to insert a new row in a table.</li>
                            <li>The <strong>INSERT INTO with SELECT</strong> statement is used to insert a new row in a table when a sub-select is used
                            instead of the VALUES clause</li>
                        </ul>

                    <p>INSERT INTO employee (first_name, last_name, employee_id, department)</p>
                        <p>VALUES (‘David’, ‘Clark’, 610008, ‘shipping’),</p>
                        <p>(‘Arnold’, ‘Davis’, 610009, ‘accounting’)</p>

                <h4>Updating Data and Databases</h4>
                    <p>The function of the UPDATE statement is to change data in a table or view. Much like any of
                    the data manipulation or modification clauses and statements within SQL, you can use this
                    statement in either SSMS or a text editor window</p>
                    <p>The UPDATE clause allows you to modify data stored in tables using data attributes such as
                    the following:</p>
                    <p>UPDATE table_name</p> 
                    <p>SET attribute = value</p>
                      <p>WHERE conditions</p>  
    
                <h4>Deleting Data</h4>
                    <p>There are several different ways to remove rows from a table or view. You can identify and delete
                        individual rows from the database using the DELETE syntax, delete all the rows using a truncate
                        table statement, or remove the entire table using the drop table statement. Which method
                        you choose depends entirely on your needs or the amount of data you need to remove.</p>

                <p>You can use the DELETE statement to remove one or more rows in a table or view. This statement
            is structured as follows:</p>

                <p>DELETE FROM table_name</p>
                <p>WHERE conditions</p>

                <h5>Truncating a Table with TRUNCATE TABLE</h5>

                <p>Perhaps you would like to delete all the rows from a particular table. You could use the TRUNCATE
                    TABLE statement to do this, although you may also be tempted to use DELETE and the where
                    condition. This latter technique would produce the same output, but it could take a great deal of
                    time if you are deleting rows from very large databases. Thus, the TRUNCATE TABLE statement
                    would be the better option.</p>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <!----------------------------Section 4---------------------------------------------->
                <h3>Part 4:Understanding Data Storage</h3>
                  <p>What is covered in this section:</p>
                    <ul>
                        <li>Normalising a Database</li>
                        <li>Understanding Primary, Foreign and Composite Keys</li>
                        <li>Understanding Clustered and Non-Clustered Indexes</li> 
                    </ul>
                 <h4>Normalising a Database</h4>
                    <p>Normalization is the elimination of redundant data to save space.The main reason for using normalization techniques in data storage arose in the days when
                        storage cost a great deal more than it does today. Indeed, normalization, in a nutshell, is the
                        elimination of redundant data to save space.</p>
        
                    <p>Normalization, by definition, is the process of organizing data in order to reduce redundancy
                        by dividing a database into two or more tables and then defining table relationships. The
                        objective of this operation is to isolate data so that additions, deletions, and modifications
                        occurring in each field can be made inside one table and then propagated throughout the rest
                        of the database using these defined relationships.</p>
            
                    <p>There are five normalization forms (NFs), of which we’ll focus on the first three:</p>
            
                      <ul>
                         <li><strong>First normalization form (1NF):</strong> Eliminate repeating groups</li>
                         <li><strong>Second normalization form (2NF):</strong> Eliminate redundant data</li>
                         <li><strong>Third normalization form (3NF):</strong> Eliminate columns not dependent on key</li>  
                         <li><strong>Fourth normalization form (4NF):</strong> Isolate independent multiple relationships</li>      
                         <li><strong>Fifth normalization form (5NF):</strong> Isolate semantically related multiple relationships</li>          
                          </ul>
        
                    <h5>HOW TO NORMALIZE A DATABASE TO THE THIRD NORMAL FORM</h5>
                    <p>There are two basic requirements for a database to be in third normal form:</p>
        
                <ul>
                    <li>The database must already meet the requirements of both 1NF and 2NF</li>
                    <li>The database must not contain any columns that aren’t fully dependent upon the
                        primary key. </li>
                </ul>

                 <h4>Understanding Primary, Foreign and Composite Keys</h4>

                    <p>Three different types of constraints available within SQL Server ensure that you are able
                        to maintain database integrity: primary keys, foreign keys, and composite (unique) keys.
                        A unique key constraint will allow you to enforce the uniqueness property of columns, in
                        addition to a primary key within a table. A unique constraint acts similarly to a primary key
                        but with two important differences:</p>
            
                            <ul>
                                <li>Columns containing a unique key constraint may contain only one row with a NULL
                                    value. You cannot have two rows containing a NULL value in the same option, as that
                                    would violate the unique constraint’s duplicate value error.</li>
                                <li>A table may have multiple unique constraints.</li>
                            </ul>

                        <ul>
                            <li>A <strong>primary key</strong> serves as the unique identifier of a specific row and uniquely defines a relationship
                                within a database.</li>
                            <li>A <strong>foreign key</strong> references the primary key in another table.</li>
                            <li><strong>Data integrity</strong> ensures that data is consistent, correct, and usable throughout the database.</li>
                        </ul>

                 <h4>Understanding Clustered and Non-Clustered Indexes</h4> 
                    <p>As a database administrator, you should understand what the two types of indexes (clustered
                        and non-clustered) do and what the role of these indexes is within a database environment.
                        You’re probably already familiar with the index in a textbook, which contains entries for
                        particular subjects, words, and ideas. Whenever you want to quickly find information in the
                        book, you can simply turn to this index. Indexing with databases, in the larger scheme of
                        things, is exactly the same thing.</p>

                       <ul>
                            <li>An <strong>index</strong> contains keywords and associated data that point to the location of more comprehensive information,
                                such as files and records on a disk or record keys in a database.</li>
                            <li>In a <strong>b-tree</strong> structure for storing database indexes, each node in the tree contains a sorted list of key values
                                and links that correspond to ranges of key values between the listed values.</li>
                            <li>A <strong>non-clustered index</strong> is arranged similarly to the index of a book, where the index value points to the
                                actual information.</li>
                            <li>A <strong>clustered index</strong> is arranged in a special order to make retrieval of information faster with direct access to
                                the information.</li>
                        </ul>
            </asp:View>
            <asp:View ID="View5" runat="server">
                <!----------------------------Section 5---------------------------------------------->
                <h3>Part 5: Administering a Database</h3>
                  <p>What is covered in this section:</p>
                    <ul>
                        <li>Securing Databases</li>
                        <li>Backing up and Restoring Databases</li>
                    </ul>
                  <h4>Securing Databases</h4>

                    <p>All database administrators must understand the need to secure a database, what objects
                        can be secured, and what objects should be secured, as well as the importance of user
                        accounts and roles.</p>

                    <p>A simple security plan with only a few roles and all IT users designated as sysadmins may
                        suffice for a small organization, but larger organizations—such as the military, banks, or
                        international corporations—require a more complex security plan that’s designed and implemented
                        with heavy security in place. Regardless of an organization’s size, the end result of
                        its database security should be to ensure that users’ assigned rights and responsibilities are
                        enforced through a security plan</p>

                    <p>A login or logon is the process by which individual access to a computer system is controlled
                        by identification of the user through the credentials he or she provides. The most common
                        login method involves supplying both a username and password. A user account is a logical
                        representation of a person within an electronic system. </p>
            
                        <ul>
                            <li>A <strong>security plan</strong>identifies which users can do what action(s) to data in the database.</li>
                            <li>A <strong>physical security plan</strong> addresses the safety of the actual location of the database.</li>
                            <li>A <strong>Access control</strong> ensures and restricts who can connect and what they can do.</li>
                            <li><strong>user account</strong> provides users with access to the database.</li>
                            <li><strong>Roles</strong> grant permissions to the database. Defined roles give all users within a group the same permissions.</li>
                        </ul>
        
                    <h5>Understanding Server-Level Security</h5>
        
                        <p>In the security model for a SQL Server, there are three different methods by which a user
                            can be initially identified:</p>
                            <ul>
                                <li>Windows user login</li>
                                <li>Membership in a Windows user group</li>
                                <li>SQL Server-specific login (if the server uses mixed-mode security</li>
                            </ul>
          
                            <h5>Understanding Database-Level Security</h5> 
                                <p>Even though a user may belong to a fixed database role and have certain administrativelevel
                                    permissions, he or she still cannot access data without first being granted permission
                                    to database objects (e.g., tables, stored procedures, views, functions).</p>     
            
                                <p>Each object’s permission is assigned through granting, denying, or revoking user login
                                permissions:</p>
                                   <ul>
                                       <li>Granting permission means that a user can access the object.</li>
                                        <li>Denying permission overrides a granted permission.</li>
                                       <li>BRevoking a permission removes the permission that has been assigned, regardless of
                                        whether it was a denied permission or a granted permission.</li>
                                    </ul>

                         <h4>Backing up and Restoring Databases</h4>
                            <p>Backup is a process of saving all critical data to re-create the database in useful form in a relatively short
								time. The purpose of a database backup is to have something to restore if data is lost during a business’s
                                daily routine. For example, a user may accidentally delete a table, or a database administrator may
                                need to restore multiple tables on different servers in order to combine them into one database.
                                The need for a database backup and restore plan is both immediate and far reaching.</p>

                         
                
                            <h5>SQL Server offers three recovery models. They are:</h5>
        
                                <ul>
                                    <li>Simple Recovery</li>
                                    <li>Full Recovery</li>
                                    <li>Bulk-Logged</li>
                                </ul>
                
                            <p>When you perform backups, you can choose the type of backup that is best for your environment.
                                The type of backup is based on simplicity, time to perform a backup, and time to
                                perform a restore.</p>
                            <ul>
                                <li>In a <strong>full backup</strong> all files are copied for possible future retrieval.</li>
                                <li>In an<strong>incremental backup</strong> only files that have been changed since the last backup are copied.</li>
                                <li>In a <strong>differential backup</strong> only files that have been changed since the last full_backup are copied.</li>
                                <li><strong>Replicated services</strong> re-create a full or incremental reproduction of the database.</li>
                            </ul>
            </asp:View>
        </asp:MultiView>
    </div>
   <asp:Button CommandName="NextView" ID="btnCourseContentComplete" runat="server" Text="To access Tutorials" />
    </asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="placeholderTabTwo" runat="server">
     <h2 style="margin-bottom:30px">Video Tutorials for revision:</h2>
    <p><strong>Microsoft MTA Database Administration Fundamentals: Exam 98-364 - Sample Lesson</strong></p>
    <iframe src="https://www.youtube.com/embed/-mVDfFDWcqg"></iframe>

    <p><strong>Introduction to Database Management Systems 1: Fundamental Concepts</strong></p>
    <iframe src="https://www.youtube.com/embed/6u2zsJOJ_GE"></iframe>

    <p><strong> Tutorial for beginners 1/4; SQL Basic database/scripting Introduction lesson</strong></p>
    <iframe src="https://www.youtube.com/embed/cYmQr8yeALA"></iframe>

    <p><strong>Usefull Websites:</strong></p>
    <ul>
         <li><a href="https://www.microsoft.com/learning/en-ie/mta-certification.aspx" target="_blank" title="Official MTA Webstie">Official MTA Certification Website</a></li>
        <li><a href="https://borntolearn.mslearn.net/certification/database/w/wiki/519.364-database-fundamentals" target="_blank" title="Borntolearn MSlearn.net">Born to learn by MS</a></li>
    </ul>
    <asp:Button CommandName="NextView" ID="btnTutorialsComplete" runat="server" Text="To access Mock Exam" />

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="placeholderTabThree" runat="server">

    <!----- *****************************MOCK EXAM********************************---------->
 <h2>Database Fundamentals Mock Exam</h2>
    
    <p>
            1) Which of the following is not a DDL statment
            <asp:RadioButtonList ID="rdMock1" runat="server">
                <asp:ListItem Value="1">CREATE</asp:ListItem>
                <asp:ListItem Value="2">MERGE</asp:ListItem>
                <asp:ListItem Value="3">ALTER</asp:ListItem>
                <asp:ListItem Value="4">DROP</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rdMock1" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            2) Which of the following is not a constraint?
            <asp:RadioButtonList ID="rdMock2" runat="server">
                <asp:ListItem Value="1">Null</asp:ListItem>
                <asp:ListItem Value="2">Unique</asp:ListItem>
                <asp:ListItem Value="3">Check</asp:ListItem>
                <asp:ListItem Value="4">Primary</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rdMock2" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
        <p>
            3) What does SQL stand for?
            <asp:RadioButtonList ID="rdMock3" runat="server">
                <asp:ListItem Value="1">Structured Question Language</asp:ListItem>
                <asp:ListItem Value="2">Structured Query Language</asp:ListItem>
                <asp:ListItem Value="3">Strong Question Language</asp:ListItem>
                <asp:ListItem Value="4">Specific Query Language</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rdMock3" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            4) Which of the following SQL statements is used to extract data from a database
            <asp:RadioButtonList ID="rdMock4" runat="server">
                <asp:ListItem Value="1">SELECT</asp:ListItem>
                <asp:ListItem Value="2">OPEN</asp:ListItem>
                <asp:ListItem Value="3">EXTRACT</asp:ListItem>
                <asp:ListItem Value="3">GET</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rdMock4" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            5) Which of the following is not a data type
            <asp:RadioButtonList ID="rdMock5" runat="server">
                <asp:ListItem Value="1">Exact numerics</asp:ListItem>
                <asp:ListItem Value="2">Approximate numerics</asp:ListItem>
                <asp:ListItem Value="3">ANSI string</asp:ListItem>
                <asp:ListItem Value="4">Spatial</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rdMock5" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            6) Which of the following statements does not accurately describe a view?
         <asp:RadioButtonList ID="rdMock6" runat="server">
                <asp:ListItem Value="1">A view is a virtual table.</asp:ListItem>
                <asp:ListItem Value="2">A view is meant to serve as a security mechanism.</asp:ListItem>
                <asp:ListItem Value="3">Views should not be used for granting access.</asp:ListItem>
                <asp:ListItem Value="4">A view simplifies query execution</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="rdMock6" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
    <p>
            7) Which statement is used to supress the '(1 row(s) affected)' after executing query statements?
            <asp:RadioButtonList ID="rdMock7" runat="server">
                <asp:ListItem Value="1">SET NO COUNT</asp:ListItem>
                <asp:ListItem Value="2">SET NOCOUNT ON</asp:ListItem>
                <asp:ListItem Value="3">SET NO COUNTING</asp:ListItem>
                <asp:ListItem Value="4">SET NO COUNTING ON</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="rdMock7" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            8) Which is not a reqular data type?
            <asp:RadioButtonList ID="rdMock8" runat="server">
                <asp:ListItem Value="1">CHAR</asp:ListItem>
                <asp:ListItem Value="2">NCAR</asp:ListItem>
                <asp:ListItem Value="3">TEXT</asp:ListItem>
                <asp:ListItem Value="4">VARCHAR</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="rdMock8" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
        <p>
            9) Which of the following operators is not supported when combining results between SELECT statements?
            <asp:RadioButtonList ID="rdMock9" runat="server">
                <asp:ListItem Value="1">UNION</asp:ListItem>
                <asp:ListItem Value="2">EXCEPT</asp:ListItem>
                <asp:ListItem Value="3">INTERSECT</asp:ListItem>
                <asp:ListItem Value="4">AND</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="rdMock9" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            10) Which of the following range conditions would generate a syntax error?
            <asp:RadioButtonList ID="rdMock10" runat="server">
                <asp:ListItem Value="1">salary <= 50000 and salary >= 10000</asp:ListItem>
                <asp:ListItem Value="2">salary between (10000 and 50000) and (60000 and 90000)</asp:ListItem>
                <asp:ListItem Value="3">salary >= 10000 and salary <= 50000</asp:ListItem>
                <asp:ListItem Value="3">salary between 10000 and 50000</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="rdMock10" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            11) Which of the following is used to prevent accidental deletion of data in a table?
            <asp:RadioButtonList ID="rdMock11" runat="server">
                <asp:ListItem Value="1">Transactions</asp:ListItem>
                <asp:ListItem Value="2">Null values</asp:ListItem>
                <asp:ListItem Value="3">Inner joins</asp:ListItem>
                <asp:ListItem Value="3">Referential integrity</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="rdMock11" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            12) Using the ________ statement is the most efficient way to delete all rows from a table.
         <asp:RadioButtonList ID="rdMock12" runat="server">
                <asp:ListItem Value="1">DELETE</asp:ListItem>
                <asp:ListItem Value="2">TRUNCATE</asp:ListItem>
                <asp:ListItem Value="3">ALTER</asp:ListItem>
                 <asp:ListItem Value="3">UPDATE</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="rdMock12" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
    <p>
            13) One reason to add an index is to:
         <asp:RadioButtonList ID="rdMock13" runat="server">
                <asp:ListItem Value="1">decrease storage space.</asp:ListItem>
                <asp:ListItem Value="2">increase database security.</asp:ListItem>
                <asp:ListItem Value="3">improve performance of select statements.</asp:ListItem>
                 <asp:ListItem Value="3">improve performance of insert statements.</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="rdMock13" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
<p>    
            14) You have a table that contains the following data.</p>
    <table>
        <tr>
            <th>ProductID</th>
            <th>ProductName</th>
            <th>Color1</th>
            <th>Color2</th>
            <th>Color3</th>
        </tr>
        <tr>
            <td>4545</td>
            <td>Shirt</td>
            <td>Blue</td>
            <td>Green</td>
            <td>Purple</td>
        </tr>
        </table>
        
    <p>You break the table into the following two tables.</p>

    <table>
        <tr>
            <th>ProductID</th>
            <th>ProductName</th>
        </tr>
        <tr>
            <td>4545</td>
            <td>Shirt</td>
        </tr>
    </table>

    <table>
        <tr>
            <th>ProductID</th>
            <th>Color</th>
        </tr>
        <tr>
            <td>4545</td>
            <td>Blue</td>
        </tr>
        <tr>
            <td>4545</td>
            <td>Green</td>
        </tr>
        <tr>
            <td>4545</td>
            <td>Purple</td>
        </tr>
    </table>
            
        
        <p>The process is referred to as:</p>
         <asp:RadioButtonList ID="rdMock14" runat="server">
                <asp:ListItem Value="1">defragmentation</asp:ListItem>
                <asp:ListItem Value="2">normalisation</asp:ListItem>
                <asp:ListItem Value="3">fragmentation</asp:ListItem>
                 <asp:ListItem Value="3">denormalisation</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="rdMock14" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
   
   <p>
            15) Using the ________ statement is the most efficient way to delete all rows from a table.
         <asp:RadioButtonList ID="rdMock15" runat="server">
                <asp:ListItem Value="1">DELETE</asp:ListItem>
                <asp:ListItem Value="2">TRUNCATE</asp:ListItem>
                <asp:ListItem Value="3">ALTER</asp:ListItem>
                 <asp:ListItem Value="3">UPDATE</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="rdMock15" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
    <p>
            16) Which key uniquely identifies a row in a table?
         <asp:RadioButtonList ID="rdMock16" runat="server">
                <asp:ListItem Value="1">foreign</asp:ListItem>
                <asp:ListItem Value="2">primary</asp:ListItem>
                <asp:ListItem Value="3">local</asp:ListItem>
                 <asp:ListItem Value="3">superkey</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="rdMock16" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
   
           <p>  17) Which statement creates a composite key?</p>
            
            <p><strong>A. CREATE TABLE Order</strong></p>
            <p>(OrderID        INTEGER PRIMARY KEY,</p>
            <p>OrderItemID    INTEGER PRIMARY KEY)</p>

            <p><strong>B. CREATE TABLE Order</strong></p>
                <p>(OrderID        INTEGER,</p>
                <p> OrderItemID    INTEGER,</p>
                <p> PRIMARY KEY OrderID,</p>
                <p> PRIMARY KEY OrderItemID)</p>
            
            <p><strong>C. CREATE TABLE Order</strong></p>
              <p>  (OrderID        INTEGER,</p>
              <p>   OrderItemID    INTEGER,</p>
              <p>   PRIMARY KEY)   </p>   

           <p><strong>D. CREATE TABLE Order</strong></p>
               <p> (OrderID        INTEGER,</p>
               <p>  OrderItemID    INTEGER, </p>
               <p> PRIMARY KEY(OrderID, OrderItemID))</p>

         <asp:RadioButtonList ID="rdMock17" runat="server">
                <asp:ListItem Value="1">Option A</asp:ListItem>
                <asp:ListItem Value="2">Option B</asp:ListItem>
                <asp:ListItem Value="3">Option C</asp:ListItem>
                 <asp:ListItem Value="3">Option D</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="rdMock17" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        
    <p>
            18) At 3:00pm(1500 hrs), you create a backup of your database. At 4:00pm (1600 hrs), you create
            a table named Customer and import data into the table. At 5:00pm (1700 hrs), your server fails.
            You run a script to apply only the 3:00pm backup to your database.
            What is the result of the script? 
         <asp:RadioButtonList ID="rdMock18" runat="server">
                <asp:ListItem Value="1">The Customer table no longer exists.</asp:ListItem>
                <asp:ListItem Value="2">The Customer table is unaffected.</asp:ListItem>
                <asp:ListItem Value="3">The Customer table exists but has no data.</asp:ListItem>
                 <asp:ListItem Value="3">The script fails.</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="rdMock18" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
    <p>
            19) In which situation do you need to perform restore on a database?
         <asp:RadioButtonList ID="rdMock19" runat="server">
                <asp:ListItem Value="1">When data becomes corrupted in the database.</asp:ListItem>
                <asp:ListItem Value="2">When you need to rollback a transaction.</asp:ListItem>
                <asp:ListItem Value="3">When you encounter an error in your application</asp:ListItem>
                 <asp:ListItem Value="3">When data needs to be deleted from the database</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="rdMock19" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
    <p>
            20) Which command should you use to give a user permission to read the data in a table?
         <asp:RadioButtonList ID="rdMock20" runat="server">
                <asp:ListItem Value="1">ALLOW SELECT</asp:ListItem>
                <asp:ListItem Value="2">LET READ</asp:ListItem>
                <asp:ListItem Value="3">PERMIT READ</asp:ListItem>
                 <asp:ListItem Value="3">GRANT SELECT</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="rdMock20" Display="Dynamic" ErrorMessage="Select an answer" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
            <asp:Label ID="lblShowResults" runat="server" Text="" CssClass="displayResult"></asp:Label>
            <asp:Button ID="btnMockExam1" runat="server" Text="Submit Answers" OnClick="btnMockExam1_Click" />
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="placeholderTabFour" runat="server">

    <!----- *****************************PROGRESS********************************---------->
        <h3>Mock exam history</h3>
          <table class="table table-hover" id="courseInformationTable" runat="server">
                <tr>
                    <th>Date</th>
                    <th>Result</th>
                </tr>
           </table>
</asp:Content>
