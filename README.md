# Kunle Day Drinking Tours

A Hugo-powered static website for Kunle Day Drinking Tours in Granada, Spain. The site showcases day drinking tours led by Kunle Barker, an experienced English TV presenter who now calls Granada home.

## Features

- **Responsive Design**: Mobile-first design using Bootstrap 5
- **Tour Booking System**: Interactive booking form with tour selection
- **Modern Layout**: Clean, professional design with beautiful imagery
- **SEO Optimized**: Proper meta tags and semantic HTML structure
- **GitHub Pages Integration**: Automatic deployment on push to main branch

## Technology Stack

- **Static Site Generator**: Hugo (Extended)
- **CSS Framework**: Bootstrap 5.3.0
- **Icons**: Font Awesome 6.4.0
- **Deployment**: GitHub Actions + GitHub Pages
- **Theme**: Custom Granada Tours theme

## Local Development

### Prerequisites

- Hugo Extended (v0.121.0 or later)
- Git

### Installation

1. Clone the repository:
```bash
git clone https://github.com/username/kunledaydrinkingtours.com.git
cd kunledaydrinkingtours.com
```

2. Start the development server:
```bash
hugo server -D
```

3. Open your browser and visit `http://localhost:1313`

### Build Commands

- **Development server**: `hugo server -D`
- **Build for production**: `hugo --gc --minify`
- **Build drafts**: `hugo server -D --buildDrafts`

## Project Structure

```
kunledaydrinkingtours.com/
├── .github/
│   └── workflows/
│       └── hugo.yml              # GitHub Actions workflow
├── content/
│   ├── _index.md                 # Homepage content
│   ├── about.md                  # About Kunle page
│   ├── tours.md                  # Tours information
│   ├── booking.md                # Booking page
│   └── contact.md                # Contact page
├── themes/
│   └── granada-tours/
│       ├── layouts/
│       │   ├── _default/
│       │   │   ├── baseof.html   # Base template
│       │   │   ├── single.html   # Single page template
│       │   │   └── booking.html  # Booking page template
│       │   └── index.html        # Homepage template
│       └── static/
│           └── css/
│               └── style.css     # Custom styles
├── hugo.toml                     # Hugo configuration
├── .gitignore                    # Git ignore rules
└── README.md                     # This file
```

## Configuration

The site configuration is managed in `hugo.toml`. Key settings include:

- **baseURL**: Update for your domain
- **Site Parameters**: Contact information, description
- **Menu Configuration**: Navigation structure

## Content Management

### Adding New Content

1. Create new content files in the `content/` directory
2. Use Hugo's front matter for metadata:

```yaml
---
title: "Page Title"
date: 2024-01-01
draft: false
---

Your content here...
```

### Tour Information

Tours are managed in `content/tours.md`. Update this file to:
- Add new tour types
- Change pricing
- Modify schedules
- Update descriptions

### Contact Information

Update contact details in `hugo.toml` under the `[params]` section.

## Deployment

### GitHub Pages (Automatic)

The site automatically deploys to GitHub Pages when changes are pushed to the `main` branch.

1. Ensure GitHub Pages is enabled in repository settings
2. Set source to "GitHub Actions"
3. Push changes to main branch
4. GitHub Actions will build and deploy automatically

### Manual Deployment

1. Build the site: `hugo --gc --minify`
2. Upload the `public/` directory to your web server

## Customization

### Styling

- Custom CSS is in `themes/granada-tours/static/css/style.css`
- Bootstrap classes are used throughout for responsive design
- Colors and branding can be modified via CSS custom properties

### Images

- Hero images use Unsplash URLs (replace with your own for production)
- Kunle's photo is loaded from the Great British Speakers website
- Add your own images to `static/images/` and reference them in content

### Booking System

The booking form is currently a demo. For production:
1. Integrate with a booking service (e.g., Calendly, Acuity Scheduling)
2. Add payment processing (Stripe, PayPal)
3. Connect to email marketing service

## SEO and Performance

- Semantic HTML structure
- Optimized images with proper alt tags
- Minified CSS and HTML in production
- Responsive design for mobile optimization
- Fast loading with CDN-hosted assets

## Browser Support

- Modern browsers (Chrome, Firefox, Safari, Edge)
- Mobile responsive design
- Progressive enhancement for older browsers

## Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes
4. Test locally: `hugo server -D`
5. Commit changes: `git commit -am 'Add feature'`
6. Push to branch: `git push origin feature-name`
7. Create a Pull Request

## License

This project is licensed under the BSD 3-Clause License - see the [LICENSE](LICENSE) file for details.

## Contact

For questions about the website:
- Email: info@kunledaydrinkingtours.com
- Website: https://kunledaydrinkingtours.com

For technical issues:
- Create an issue in this repository
- Contact the development team