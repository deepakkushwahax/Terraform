# Getting Started with Terraform and Infrastructure as Code

Hey there! This guide is here to help you wrap your head around Terraform and why we use Infrastructure as Code (IaC). If you've ever felt the pain of manually clicking through the AWS console to set up servers, you're going to love this.

### Here is the main Diagram I create - 

<img width="1041" height="518" alt="image" src="https://github.com/user-attachments/assets/07232675-9f33-4f8c-91a3-ad53923bd796" />

## 1. What is Terraform and IaC?

Think of **Infrastructure as Code (IaC)** as a blueprint for your data center. Instead of physically plugging in cables or clicking buttons in a web browser, you write code that describes what you want.

**Terraform** is the tool we use to make that happen. It's an open-source tool from HashiCorp that reads your code (written in HCL, which is pretty easy to read) and goes out to build your infrastructure for you.

## 2. The Core Concepts

Moving to IaC is a bit of a mindset shift, but here are the big ideas:

*   **Tell it *what*, not *how* (Declarative):** You don't write a script that says "click this button, then wait, then click that." You just say "I want an EC2 instance," and Terraform figures out the steps to create it.
*   **No duplicates (Idempotency):** If you run your code twice, Terraform is smart enough to see that the resource already exists and won't create a second one. It just ensures what's there matches your code.
*   **Treat it like code (Version Control):** Since it's just text files, we can put it in Git. This means we have a history of changes, we can do code reviews, and we can roll back if we mess something up.

## 3. Why Manual Provisioning (ClickOps) is a Pain

We've all been there—logging into the console and manually setting things up. It works for a quick test, but it falls apart fast:

*   **Oops moments:** It's super easy to misconfigure a setting or forget a checkbox.
*   **"It worked on my machine":** Your dev environment ends up slightly different from production because someone made a manual tweak six months ago and forgot to tell anyone.
*   **Mystery Meat Infrastructure:** Without code, the only way to know how something is built is to go look at the console settings, which is tedious.
*   **It's slow:** Clicking through wizards for 50 servers? No thanks.

## 4. Why We Use Terraform

*   **It's fast:** Terraform can spin up hundreds of resources in minutes.
*   **It's consistent:** You get the exact same environment every time. No surprises.
*   **Teamwork:** We can collaborate on infrastructure just like we do on application code.
*   **The State File:** Terraform keeps a "state file" (kind of like a map) that tracks what it created. This is its source of truth so it knows what to update or destroy.
*   **One tool for everything:** Whether you're on AWS, Azure, or Google Cloud, the workflow is the same.

## 5. How It Works (The Workflow)

The workflow is actually pretty simple. We call it **Write -> Plan -> Apply**.

1.  **Write:** You write your `.tf` files describing your infrastructure.
2.  **Plan:** You run `terraform plan`. This is like a "dry run." Terraform looks at your code, looks at what's actually running, and tells you *exactly* what it's going to do. It's a great safety net.
3.  **Apply:** If the plan looks good, you run `terraform apply`. Terraform goes out and builds everything.

### Visualizing the Flow

Here's a quick diagram to show how the pieces fit together:

### 6. Here is the resource from where I learned

<p align="center">
  <a href="https://youtu.be/s5fwSG_00P8?si=4LYruak_3uSzJL31">
    <img src="https://img.youtube.com/vi/s5fwSG_00P8/0.jpg" alt="YouTube Video" />
  </a>
</p>

## Contact Information

| **Name**           | **Email address**                         |
|--------------------|--------------------------------------------|
| Deepak Kushwaha    | [deepakkushwaha7523@gmail.com](mailto:deepakkushwaha7523@gmail.com) |

---

## References

| **Link**                                                                 | **Description**                                   |
|--------------------------------------------------------------------------|---------------------------------------------------|
| [Terraform Documentation ](https://developer.hashicorp.com/terraform/docs) | Document format followed from this link.          |




## Author

- [Deepak Kushwaha](#)
