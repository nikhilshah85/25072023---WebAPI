namespace consumeAPI_httpclient.Models
{
    public class Products
    {
        public int id { get; set; }
        public string title { get; set; }
        public int price { get; set; }
        public string description { get; set; }
        public string category { get; set; }
        public string image { get; set; }

        public List<Products> productList = new List<Products>();

        public List<Products> GetPostData()
        {
            HttpClient client = new HttpClient();

            client.DefaultRequestHeaders.Accept.Clear(); //clear the browser tab setting
            client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

            string url = "https://jsonplaceholder.typicode.com/posts";

            var response = client.GetAsync(url).Result;

            if (response.IsSuccessStatusCode)
            {
                var data = response.Content.ReadAsAsync<List<PostDetails>>();
                data.Wait();
                productList = data.Result;
                return productList;

            }
            else
            {
                throw new Exception("Could not get data from server, please contact Admin");
            }

        }
    }
}

    

