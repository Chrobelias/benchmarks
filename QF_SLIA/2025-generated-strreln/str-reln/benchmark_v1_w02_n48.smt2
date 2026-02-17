(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "328") (re.* (re.union (str.to_re "81") (re.+ (re.range "1" "4")))))))

(assert (>= (+ (* 4 (str.len x)) (* (- 9) (str.to_int x))) 68))

(check-sat)