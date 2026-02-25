(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.++ (str.to_re "818") (re.* (str.to_re "920"))) (str.to_re "6")))))

(assert (> (+ (* 2 (str.len x)) (* (- 2) (str.to_int x))) 30))

(check-sat)