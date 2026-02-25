(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re a (re.++ (re.union (re.range "5" "9") (str.to_re "609")) (re.* (str.to_re "795")))))
(assert (str.in_re y (re.union (str.to_re "50") (re.+ (re.union (re.+ (str.to_re "223")) (str.to_re "48"))))))
(assert (str.in_re x (re.++ (re.* (str.to_re "807")) (str.to_re "666"))))
(assert (str.in_re z (re.+ (re.union (str.to_re "4") (re.union (re.+ (str.to_re "671")) (re.range "4" "6"))))))

(assert (< (+ (* (- 6) (str.len y)) (* 5 (str.to_int z)) (* (- 10) (str.to_int a))) 87))

(check-sat)