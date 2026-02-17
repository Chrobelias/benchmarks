(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.++ (re.range "4" "7") (str.to_re "8")))))

(assert (= (+ (* 7 (str.len x)) (* 3 (str.to_int x))) 86))

(check-sat)