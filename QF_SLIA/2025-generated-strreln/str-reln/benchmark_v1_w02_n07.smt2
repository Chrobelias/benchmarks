(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (re.range "0" "3")) (re.union (str.to_re "849") (str.to_re "88")))))

(assert (> (+ (* 4 (str.len x)) (* (- 5) (str.to_int x))) 26))

(check-sat)
(get-model)