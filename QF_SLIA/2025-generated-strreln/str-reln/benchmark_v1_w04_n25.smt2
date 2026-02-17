(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (re.range "4" "7") (str.to_re "168")) (re.+ (str.to_re "687")))))

(assert (< (* (- 3) (str.len x)) 29))
(assert (>= (+ (* 9 (str.len x)) (* (- 4) (str.to_int x))) 40))
(assert (> (* 7 (str.len x)) 100))

(check-sat)