(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (re.union (re.* (re.range "3" "9")) (str.to_re "45"))))))

(assert (>= (* (- 8) (str.to_int x)) 69))
(assert (= (* (- 10) (str.len x)) 51))

(check-sat)