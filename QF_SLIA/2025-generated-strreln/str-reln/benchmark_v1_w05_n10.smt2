(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (re.range "0" "3") (re.* (re.* (str.to_re "2")))) (str.to_re "886"))))

(assert (> (* 7 (str.len x)) 43))
(assert (>= (* 6 (str.to_int x)) 54))
(assert (<= (+ (* (- 5) (str.len x)) (* (- 10) (str.to_int x))) 1))
(assert (>= (* 3 (str.len x)) 87))

(check-sat)
(get-model)