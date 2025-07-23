# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Codebase Overview

This is a Hugo static site for **Kunle Day Drinking Tours**, a Granada-based tour business. The site uses a custom theme called `granada-tours` and is deployed via GitHub Actions to GitHub Pages.

## Common Development Commands

### Development
```bash
hugo server -D                     # Start development server with drafts
./dev.sh                          # Custom development script
npm run dev                       # NPM script for development server
```

### Building
```bash
hugo --gc --minify               # Production build with optimization
npm run build                    # NPM script for production build
npm run clean                    # Remove public directory before build
```

### Local Development
- Development server runs on `http://localhost:1313`
- Live reload enabled for content and template changes
- Use `-D` flag to include draft content

## Architecture

### Hugo Structure
- **Theme**: Custom theme in `themes/granada-tours/`
- **Content**: Markdown files in `content/` directory
- **Templates**: Located in `themes/granada-tours/layouts/`
- **Static Assets**: In `themes/granada-tours/static/`
- **Configuration**: `hugo.toml` for site settings

### Frontend Stack
- **Hugo Extended v0.121.0+** (required for SCSS processing)
- **Bootstrap 5.3.0** via CDN for responsive design
- **Font Awesome 6.4.0** for icons
- **Vanilla JavaScript** for booking form interactions

### Key Templates
- `layouts/_default/baseof.html` - Base template with header/footer
- `layouts/index.html` - Homepage template
- `layouts/_default/single.html` - Content pages
- `layouts/_default/booking.html` - Special booking page template

## Site Configuration

### hugo.toml Structure
```toml
[params]
  description = "Site description"
  phone = "Contact phone"
  email = "Contact email"
  
[[params.tours]]
  name = "Tour name"
  description = "Tour description"
  price = "Price range"
```

### Menu Configuration
Navigation menu is defined in `hugo.toml` under `[[menu.main]]` sections.

## Content Management

### Page Structure
- Homepage content in `content/_index.md`
- About page in `content/about.md`
- Tours page in `content/tours.md`
- Booking page in `content/booking.md`
- Contact page in `content/contact.md`

### Front Matter
All content pages use Hugo front matter for:
- Page title and description
- Custom CSS classes
- Menu weights for navigation order

## Deployment

### GitHub Actions
- Workflow in `.github/workflows/hugo.yml`
- Triggers on push to main branch
- Uses Hugo Extended v0.121.0
- Deploys to GitHub Pages automatically

### Build Process
- Hugo generates static files to `public/` directory
- CSS and HTML minification enabled via `--minify` flag
- Assets are optimized for production

## Styling and Assets

### CSS Architecture
- Custom CSS in `themes/granada-tours/static/css/style.css`
- Bootstrap 5 loaded via CDN
- CSS custom properties for theming (yellow/gold accent colors)
- Mobile-first responsive design

### Images
- Hero images and backgrounds loaded from external sources
- Responsive image classes using Bootstrap utilities
- Professional headshot for Kunle from Great British Speakers

## JavaScript Functionality

### Booking Form
- Interactive tour selection in `booking.html`
- Dynamic price calculation based on tour selection
- Form validation and user feedback
- Located in `<script>` tag within booking template

## Development Workflow

### Making Content Changes
1. Edit Markdown files in `content/` directory
2. Hugo automatically rebuilds during development
3. Check changes at `http://localhost:1313`

### Template Changes
1. Modify files in `themes/granada-tours/layouts/`
2. Live reload shows changes immediately
3. Test across different page types

### Styling Changes
1. Edit `themes/granada-tours/static/css/style.css`
2. Use CSS custom properties for consistent theming
3. Follow Bootstrap utility classes where possible

## Testing

### Local Testing
- Test development server with `hugo server -D`
- Test production build with `hugo --gc --minify`
- Verify responsive design across device sizes
- Check form functionality on booking page

### Pre-deployment
- Ensure all internal links work correctly
- Verify contact information is accurate
- Test booking form interactions
- Check image loading and optimization

## Site-Specific Notes

### Business Context
- Tours operate in Granada, Spain
- Guide is Kunle Barker (charismatic British-Nigerian guide)
- Four tour types: Tapas Crawl (€45), Historic Pubs (€60), Rooftop Bars (€75), VIP Experience (€200)
- Contact via phone (+34 123 456 789) or email (kunle@daydrinking.tours)

### Content Guidelines
- Maintain professional yet friendly tone
- Emphasize authentic Granada experience
- Highlight Kunle's personality and local knowledge
- Include clear pricing and booking information

### Future Enhancements
- Integration with real booking system (currently demo)
- Multilingual support (Hugo's i18n features)
- Blog section for tour stories and Granada insights
- Customer testimonials and reviews section