using System;
using NUnit.Framework;

namespace ContainerWithTest
{
    public class Tests
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void Test1()
        {
            Console.WriteLine("We have passed Test");
            // throw new AssertionException("some error");
            Assert.Pass();
        }
    }
}