using Newtonsoft.Json;

namespace Diabook.Models
{
    public class Medication
    {
        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("id")]
        public int Id { get; set; }
    }
}