using Newtonsoft.Json;

namespace Diabook.Models
{
    public class Person
    {
        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("id")]
        public int Id { get; set; }

        [JsonProperty("age")]
        public int Age { get; set; }

        [JsonProperty("profession")]
        public string Profession { get; set; }

    }
}