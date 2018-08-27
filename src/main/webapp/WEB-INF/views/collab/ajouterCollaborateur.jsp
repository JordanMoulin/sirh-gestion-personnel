<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="fr">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

  <title>SGP App</title>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <img src="https://getbootstrap.com/docs/4.1/assets/brand/bootstrap-solid.svg" width="30" height="30" alt="">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
      	<a class="nav-item nav-link" href="<c:url value='lister' />">Collaborateurs</a>
        <a class="nav-item nav-link" href="#">Statistiques</a>
        <a class="nav-item nav-link" href="#">Activités</a>
      </div>
    </div>
  </nav>
  <div class="container">
    <h1>Nouveau Collaborateur</h1>
    <form id="FormulaireAjoutCollab" method="POST" class="needs-validation" novalidate>
      <div class="form-group row">
        <label for="validationNom" class="col-sm-2 col-form-label">Nom</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="validationNom" required/>
          <div class="invalid-feedback">Le nom est invalide.</div>
        </div>
      </div>
      <div class="form-group row">
        <label for="validationPrenom" class="col-sm-2 col-form-label">Prénom</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="validationPrenom" required/>
          <div class="invalid-feedback">Le prénom est invalide.</div>
        </div>
      </div>
      <div class="form-group row">
        <label for="validationDate" class="col-sm-2 col-form-label">Date de naissance</label>
        <div class="col-sm-10">
          <input type="date" class="form-control" id="validationDate" required/>
          <div class="invalid-feedback">La date de naissance est invalide.</div>
        </div>
      </div>
      <div class="form-group row">
        <label for="validationAdresse" class="col-sm-2 col-form-label">Adresse</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="validationAdresse" required/>
          <div class="invalid-feedback">L'adresse est invalide.</div>
        </div>
      </div>
      <div class="form-group row">
        <label for="validationNumeroSecu" class="col-sm-2 col-form-label">Numéro de sécurité sociale</label>
        <div class="col-sm-10">
          <input type="text" pattern="[0-9]{15}" class="form-control" id="validationNumeroSecu" required/>
          <div class="invalid-feedback">Le numéro de sécurité sociale est invalide.</div>
        </div>
      </div>
      <div class="form-group row">
        <div class="col-sm-10">
          <button type="submit" class="btn btn-primary"> Créer</button>
        </div>
      </div>
    </form>
  </div>
  <!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-show="false">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Fenêtre de confirmation</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body" id="informations">Vous êtes sur le point d'ajouter un nouveau collaborateur</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" onclick="valideForm()">Sauvegarder</button>
					</div>
				</div>
			</div>
		</div>

  <script>
  
  function valideForm() {
	  document.getElementById('FormulaireAjoutCollab').submit()
  }
  
  // Example starter JavaScript for disabling form submissions if there are invalid fields
  (function() {
    'use strict';
    window.addEventListener('load', function() {
      // Fetch all the forms we want to apply custom Bootstrap validation styles to
      var forms = document.getElementsByClassName('needs-validation');
      // Loop over them and prevent submission
      var validation = Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function(event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          } else {
				event.preventDefault();
				event.stopPropagation();
				trouve()
				$("#exampleModal").modal('show');				
			}
          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  })();

  function trouve() {
		var nom = document.getElementById("validationNom").value;
		var newP = document.createElement("p")
		monNode = document.getElementById("informations");
		textnode = document.createTextNode("Nom : "+ nom);
		newP.appendChild(textnode);
		monNode.appendChild(newP);
		
		var prenom = document.getElementById("validationPrenom").value;
		var newP = document.createElement("p")
		monNode = document.getElementById("informations");
		textnode = document.createTextNode("Prénom : " + prenom);
		newP.appendChild(textnode);
		monNode.appendChild(newP);
		
		var anniversaire = document.getElementById("validationDate").value;
		var newP = document.createElement("p")
		monNode = document.getElementById("informations");
		textnode = document.createTextNode("Date d'anniversaire : " + anniversaire);
		newP.appendChild(textnode);
		monNode.appendChild(newP);
		
		var adresse = document.getElementById("validationAdresse").value;
		var newP = document.createElement("p")
		monNode = document.getElementById("informations");
		textnode = document.createTextNode("Adresse : " + adresse);
		newP.appendChild(textnode);
		monNode.appendChild(newP);
		
		var numSecu = document.getElementById("validationNumeroSecu").value;
		var newP = document.createElement("p")
		monNode = document.getElementById("informations");
		textnode = document.createTextNode("Numéro de sécurité social : " + numSecu);
		newP.appendChild(textnode);
		monNode.appendChild(newP);
	}
</script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
