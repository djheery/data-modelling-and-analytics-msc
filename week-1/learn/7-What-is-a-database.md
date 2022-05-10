# What is a Database? 

## My answer 

A database is a collection of data to be stored in some logical manner, where each data set corresponds to some real world object to be accessed and manipulated to perform some kind of business operation. 

Universe of Discourse

## Database Definition 

In order to understand what is meant by the term database we need to look at the definition and some of the main features.

"A Database is a related, integrated, consistent and shared collection of data that is permanently stored on a computer".

In a database you should be able to: 
- Store different types of data in the collection 
- Record relationships among different data items 
- Have varying sizes of data collections to suit your needs. 

## Database operations 

Databases should allow you to perform operations such as: 

- Insert new data 
- Delete old Data
- Amend Existing Data 
- Retrieve data from a collection 
- Manage the collection so that it can be permanently stored in teh face of various hazards that would otherwise corrupt or lose data in it. 

## Data Storage

'Permanent storage' in the context of a database means that once data is stored it stays there until it is explicitly removed, or the computer is damaged or broken causing data to be lost.

The data should not be lost if the computer is switched off or the database is not used for a long time. 

A computer has two classes of data storage: 

- Random Access Memory (RAM)
  - Used by the CPU to temporarily hold data that the CPU is processing 
- Backing store
  - This is used to persist data permanently. Typically SSDs, Magnetic discs, compact discs are used for this type of storage 

The database invariably (Always/ in every case) uses the backing store to make the data storage permanent

**NOTE**
In future as RAM becomes ever cheaper, it may be used to store databases, but will need to use a backing store to keep the data permanent as RAM cannot do so when the computer is switched off. Cheap RAM has motivated memory-resident database projects and products. 

## Different Types of Data

An Item of data represents a fact. There are different kinds of facts and hence there are different types of data to represent these facts. 

Some of the different types of data include numbers, dates, text, pictures audio maps, videos, etc.

To store useful information, many types of data may be needed together. 
As well as obvious ones i.e numbers, strings, dates. There are more complex data types, such as video, audio and picture. 

For example when recording the number of cars you see you may want: 

- The number of cars seen on your trip
- A Textual description of the characteristics (Meta data)
- Dates of observation 
- Location of where you saw them 
- Pictures 
- Audio recording of the sound of the car 
- Video of the car driving 

In practice, you are not interested in just isolated items of data. You also want to know the relationships among various data items. 
Certain relationships are essential to make sense of the data, as isolated facts are rarely meaningful. The facts need to be given a context to make them meaningful, and the context is commonly provided by relating the data that represent facts. 

## Relationships

Data relationships are extemely important. For example, a number alone offers little insight or significant. But if that number were related to a car type, i.e 1 === ford, 2 === nissan then it becomes more meaningful. This would be an essential relationship. 

For example, with car types it is important to know which car numbers, descriptions and so on relate to which car type.

Other relationships may be optional, in the sense that some users may find it useful to compare say, where a specific are was sighted and check it against how many other cars of that type were located in that area.

All sorts of relationships are possible. Some are essential to make sense of the data. Some are simply useful to gain insight in a specific manner. 