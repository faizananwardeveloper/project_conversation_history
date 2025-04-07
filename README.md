# Project Conversation History

A Ruby on Rails application to manage project conversation history, including user comments and status updates.

## Features
- Leave comments on a project
- Change the status of a project
- View a combined chronological history of comments and status changes
- TailwindCSS styling with Turbo for seamless updates

## Tech Stack
- Ruby on Rails (ruby-3.4.1)
- Turbo (Hotwire)
- TailwindCSS

## Setup Instructions
1. Clone the repo:
   ```bash
   git clone https://github.com/faizananwardeveloper/project_conversation_history.git
   cd project_conversation_history
   ```
2. Install dependencies:
   ```bash
   bundle install
   ```
3. Setup the database:
   ```bash
   rails db:setup
   ```
4. Install the Foreman
   ```bash
   gem install foreman
   ```

4. Run the server
   ```bash
   foreman start -f Procfile.dev
   ```

---

## Questions I Would Ask My Team

1. **What is the primary use case of this feature?**
    - Is it just for internal tracking or will users see the project history too?
2. **Should status changes and comments be merged chronologically into a single "conversation history" feed?**
    - Or do we keep them in separate sections?
3. **Do we need to support multiple users, or is this for a single user for now?**
    - i.e., Should comments track the author?
4. **What statuses are allowed for a project?**
    - Just Pending, In Progress, and Completed? Or can they be dynamic/configurable?
5. **Should there be notifications or real-time updates (e.g., via Turbo/Stimulus)?**
6. **Is there any validation or restriction on changing status?**
    - Can you go from Completed → In Progress?
7. **Do we want to show who made each comment or status change, with timestamps?**
8. **Do we need to persist deleted comments or status changes (soft-delete)?**
9. **Any specific UI/UX patterns you want followed (e.g., Tailwind, ViewComponent)?**

---

## Expected Answers

1. The conversation history is **visible to users**, to help them track the project's lifecycle.
2. Yes, **status changes and comments should be listed together**, in chronological order.
3. Assume **single user** for now, no authentication needed.
4. Use **fixed statuses**: `Pending`, `In Progress`, `Completed`.
5. Real-time **Turbo updates are ideal** but not required if too time-consuming.
6. No restrictions — **status can change freely** between options.
7. Yes, show **timestamps** for all comments and changes.
8. No need for soft deletes at this stage.
9. Use Tailwind for styling. Optionally integrate ViewComponent and Slim If have time.

---

## Based on this, I built the following

1. A Project model with title and status.
2. Associated Comment and StatusChange models with timestamps.
3. A conversation history that shows both status changes and comments.
4. Forms for both comment submission and status updates.
5. Basic styling with TailwindCSS, reactive updates with Turbo.

---
