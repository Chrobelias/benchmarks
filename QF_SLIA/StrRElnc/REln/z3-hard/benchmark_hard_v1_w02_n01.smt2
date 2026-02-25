(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.range "6" "9") (re.union (re.+ (str.to_re "550")) (re.+ (str.to_re "613"))))))

(assert (= (+ (* 4 (str.len x)) (* 4 (str.to_int x))) 88))

(check-sat)