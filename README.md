# FactoryDesignPatternExample
Consider the following example. We have a serializable protocol that declares a method called serialize.

Next, I define three classes that conform to the serializable protocol.

First, I create a class called Jason serializer. And it conforms to serializable, so we have to implement the serialize method.

I will simply output the console message. We have the name of the class and the name of the function.

And then I declare another class called Property List Serializer, that also conforms to serializable.

I simply copy and paste the existing class and I'm going to rename it To Property Lists Serializer.

And a third one, called XMl serializer. Let's replace the print message too, instead of exposing all these classes, clients should only know about the serializable protocol.

But then how can callers create, say, an XML serializer instance? At the core of the Factory Method Pattern is a method that encapsulates the object creation. The method takes an argument that identifies the implementation class.

This argument is usually an enumeration or a predefined constant. So let's create an enumeration, I'm going to call it serializers, and it will have three cases that match our classes.

So enum serializers and it has three cases, Jason, p list and XML. Now we can start defining a function responsible for creating the serializable objects. The functions parameter would be of type serializer, the enumeration that identifies the types. The methods return type should be the common protocol or the base class instead of a concrete type.

In our case, the return type is the serializable protocol. And I make it optional because our factory method might be unable to create an object of type serializable.
 
The implementation is quite straight forward. So first I declare a result that result, of type serializable, and then we check the input argument.

If it's value is Jason. We return adjacent Jason serializer object. If it's property list, If its plist, the result should be an instance of the property list serializer class. And finally, if it's an XML,

we make the result on XML serializer instance. And let's not forget to return the result. If the caller needs a Jason's serializer instance, he calls the make serializer function and best is in the value serializers.Jason,

Let Jason serializer equals makes serializer and the type should be Jason.

The returned object is of type Jason-Serializer, but that's hidden from the color.

All he knows is that he received an object of a type that conforms to the serializable protocol and that object can be used to serialize Jason Data.
So he could use it like this Similarly, we can create an XML serializer, equals, make serializer and the type is XML. Now let's hit run and see what happens.

The console output proves that the right instance types were created. If you're not in favor of using global functions, you can embed the make serializer method in a dedicated factory type.

For example, we could create a new struct, called serializer factory. Next, I copy the make serializer function and make it a static method of this tract. It should be static, and now we can use our factory class without polluting the global name-space.

For example, let plist serializer equals, and our serializer factory.makes serializer of type plist.
