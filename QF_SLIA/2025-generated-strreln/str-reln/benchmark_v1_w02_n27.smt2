(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.++ (re.range "5" "8") (re.range "7" "9")) (re.* (str.to_re "751")))))

(assert (<= (+ (* (- 5) (str.len x)) (* 8 (str.to_int x))) 26))

(check-sat)