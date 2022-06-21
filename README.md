# simple-storage-factory-solidity

This project is all about how to create contract factory. It means how to deploy contract from other contract on block chain. other aspect it touches are inheritance and override functions.

> read the comments in code to understand it.

1. Contract factory

to store newly create contracts from factory first create a variable of type contract that we've to generate.

`SimpleStorage[] public simpleStorageArray;`

So in StorageFactory file we want to generate many contracts of SimpleStorage so we declare a variable of type `SimpleStorage[]`. and give it a name __simpleStorageArray__

next, in `createSimpleStorageContract` method we're creating a contract using __new__ keyword and store into __simpleStorageArray__ variable so in future we can get address of any contract by it's index for that we've one more getter method that is by default created because __simpleStorageArray__ visibility is public. 



2. inheritance

> import "./SimpleStorage.sol";

> syntax is `contract ExtraStorage is SimpleStorage`

inheritance means get access to methods and properties of partent contract. here we're inheriting SimpleStorage contract into  ExtraStorage means ExtraStorage contract can access all the methods from it's parent contract SimpleStorage.

3. overrideing funtion

in parent contract we've to declare `virtual` keyword with function to which we wanted to override by child contract. in `SimpleStroage` contract we've mention `virtual` keyword with `store` method means any child contract can override only this method and can update the method as per needed not any other methods. in child contract when we override this method we've to mention `override` keyword.

here on the `ExtraStorage` contranct we mentioned both keywords `virtual` and `override`. it means we're overriding this menthod from parent contract and any child contract of `ExtraStorage` contract can also override this menthod.

