# GENERAL KNOWLEDGES ABOUT JAVA

## HISTORY

- **James Gosling, Mike Sheridan, and Patrick Naughton** initiated the Java language project in June 1991. Java was originally designed for interactive television, but it was too advanced for the digital cable television industry at the time. The language was initially called Oak after an oak tree that stood outside Gosling's office. Later the project went by the name Green and was finally renamed Java, from Java coffee. Gosling designed Java with a C/C++-style syntax that system and application programmers would find familiar.

- [More details]("https://www.tutorialspoint.com/java/")

## JAVA BASIC
> ### COLLECTION FARMEWORK
- **java.util.collection** is the root interface of Collection Framework. It constains some important methods such as **size(), iterator(), add(), remove() and clear()**.

- **List, Set Queue** are other important interfaces that inherit from the Collection interface.

- **Map** is the only interface that does not inherit from the Collection interface but it is part of Collection Framework.

- All the collection framework interfaces are present in **java.util.package**

> ### JAVA GENERIC
- Java Generics was added in Java 5 to provide complile time type checking and removing risk of **ClassCastException** which was common while working with collection classes.

___ 

```java
    // Before Java 5

    List list = new ArrayList();
```

```java
    // Java 5 and after
    
    List<String> list = new ArrayList<String>();
```
- **Generic Class:** <br> 
We can define our own classes with generic type. A generic type is a class or interface that is prameterized over types. We use bracket **(<>)** to specify the type parameter.
___
```java
public class GenericsType<T>() {
    private T t;
    public T get() {
        return this.t;
    }
    public void set(T t1) {
        this.t = t1
    }
}
```
___
```java
    // Create Class Generic Type

    GenericsType<String> type = new GenericsType<>();
    type.set("this is string");
```
- **Generic Interface:**
___
```java
// Create Interface with Generic Type

public interface Application(T, S) {
    public T getApplication(S appId);
}
```
- Java Generic Type: <br>
Java Generic Type naming convention helps us understanding code easily and having a naming convention is one of the best practices of Java programming language. The most commonly used type parameter names are:
```
E - Element (used extensively by Java Collection Framework. Ex: ArrayList, Set, etc)
K - Key (Used in Map)
N - Number
T - Type
V - Value (Used in Map)
S, U, V etc - 2nd, 3rdm 4th types
```

- Java Generic Method
```java
public static <T> T cloneObject(T t, Class<T> type) {
    try {
        ObjectMapper mapper = new ObjectMapper();
        String objectString = mapper.writeValueAsString(t);
        return mapper.readValue(objectString, type);
    } catch (JsonProcessingException e) {
        Throw new RuntimeException("Clone object error!: " + e.getMessage());
    }
}
```
