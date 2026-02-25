(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.union (str.to_re "8") (re.++ (re.range "3" "5") (str.to_re "636"))))))

(assert (< (+ (* (- 4) (str.len x)) (* 7 (str.to_int x))) 8))

(check-sat)