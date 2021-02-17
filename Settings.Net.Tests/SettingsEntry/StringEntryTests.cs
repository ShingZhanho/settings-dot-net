﻿using System;
using NUnit.Framework;
using Settings.Net.Exceptions;
using Settings.Net.SettingsEntry;

namespace Settings.Net.Tests.SettingsEntry {
    [TestFixture]
    public class StringEntryTests {
        [TestCase("StringEntry1", "Value1", "Description1")]
        [TestCase("StringEntry2", "Value2", null)]
        [TestCase("StringEntry3", null, null)]
        public void ConstructNewEntry_ValidParameters_Successful(string id, string value, string desc) {
            // Act
            var entry = new StringEntry(id, value) {Description = desc};
            
            // Assert
            Assert.That(entry.ID, Is.EqualTo(id));
            Assert.That(entry.Value, Is.EqualTo(value));
            Assert.That(entry.Description, Is.EqualTo(desc));
        }

        [TestCase(null, null)]
        [TestCase("", null)]
        public void ConstructNewEntry_NullId_ArgNullException(string id, string value) {
            Assert.Throws(typeof(ArgumentNullException), () => { _ = new StringEntry(id, value); });
        }

        [TestCase("Invalid.Name", "some value")]
        public void ConstructNewEntry_IllegalChars_InvalidNameException(string id, string value) {
            Assert.Throws(typeof(InvalidNameException), () => { _ = new StringEntry(id, value); });
        }
    }
}