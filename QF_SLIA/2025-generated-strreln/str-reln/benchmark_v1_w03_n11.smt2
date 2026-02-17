(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "34") (re.union (str.to_re "24") (re.range "6" "8"))))))

(assert (< (str.to_int x) 5))
(assert (>= (+ (* 2 (str.len x)) (* 10 (str.to_int x))) 16))

(check-sat)