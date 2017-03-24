using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using Diabook.Models;
using Neo4jClient;

namespace Diabook.Controllers
{
    public class MedicationsController : ApiController
    {
        // GET api/values
        public IEnumerable<Medication> Get()
        {
            var client = new GraphClient(new Uri("http://diabook:password1@localhost:7474/db/data"));
            client.Connect();
            var query = client
                 .Cypher
                 .Match("(medication:Medication)")
                 .Return(medication => medication.As<Medication>());

            var queryText = query.Query.QueryText;
            var queryParams = query.Query.QueryParameters;
            return query.Results;
        }

        // GET api/values/5
        public Medication Get(int id)
        {
            var client = new GraphClient(new Uri("http://diabook:password1@localhost:7474/db/data"));
            client.Connect();
            var query = client
                 .Cypher
                 .Match("(medication:Medication)")
                 .Where("medication.id = {Id}")
                 .WithParam("Id", id)
                 .Return(medication => medication.As<Medication>());

            var queryText = query.Query.QueryText;
            var queryParams = query.Query.QueryParameters;
            return query.Results.FirstOrDefault();
        }

        // POST api/values
        public void Post([FromBody]Medication medication)
        {
            var client = new GraphClient(new Uri("http://diabook:password1@localhost:7474/db/data"));
            client.Connect();
            var query = client.Cypher
                .Create("(medication:Medication {newMed})")
                .WithParam("newMed", medication);

            var queryText = query.Query.QueryText;
            var queryParams = query.Query.QueryParameters;
            query.ExecuteWithoutResults();
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]Medication value)
        {
            var client = new GraphClient(new Uri("http://diabook:password1@localhost:7474/db/data"));
            client.Connect();
            client.Cypher
                .Merge("(medication:Medication { id: {id} })")
                .OnMatch()
                .Set("medication = {value}")
                .WithParams(new
                {
                    id = value.Id,
                    value
                })
                .ExecuteWithoutResults();
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
            var client = new GraphClient(new Uri("http://diabook:password1@localhost:7474/db/data"));
            client.Connect();
            client.Cypher
                .Match("(medication:Medication)")
                .Where("medication.id = {Id}")
                .WithParam("Id", id)
                .Delete("medication")
                .ExecuteWithoutResults();
        }
    }
}
