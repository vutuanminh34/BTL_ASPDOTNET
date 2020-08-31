using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class News_DTO
    {
        string news_id, news_title, news_image, news_imagefull, news_summary, news_detail;
        DateTime news_date;

        public string News_id { get => news_id; set => news_id = value; }
        public string News_title { get => news_title; set => news_title = value; }
        public string News_image { get => news_image; set => news_image = value; }
        public string News_imagefull { get => news_imagefull; set => news_imagefull = value; }
        public string News_summary { get => news_summary; set => news_summary = value; }
        public string News_detail { get => news_detail; set => news_detail = value; }
        public DateTime News_date { get => news_date; set => news_date = value; }
    }
}
